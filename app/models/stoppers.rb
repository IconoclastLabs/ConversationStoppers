class Stoppers
	attr_accessor :lines

	def initialize
		# get local quips, if no quips then seed data
		App::Persistence['quips'] ||= self.seed_lines 
		@lines = App::Persistence['quips'].dup
		@lines.shuffle!
		# check and grab updates async
		#self.remote_update
	end

	def next_line
		if @lines.blank?
			#refurnish
			@lines = App::Persistence['quips'].dup
			@lines.shuffle!
		end

		@lines.pop
	end

	def remote_update
		ap "checking if update is needed"
		BW::HTTP.get("http://frattmans.com:4000/api.json") do |response|
		  if response.ok?
		    json = BW::JSON.parse(response.body.to_str)
		    #Check if counts differ to 
		    if json['size'] != @lines.size
		    	# go get em
		    	self.perform_update
		    end
		  else
		    ap "Check Failed: #{response.error_message}"
		  end
		end
	end

	def perform_update
		ap "downloading update"
		BW::HTTP.get("http://frattmans.com:4000/api/v1/quips/index.json") do |response|
		  if response.ok?
		    json = BW::JSON.parse(response.body.to_str)
		    # now that we've got it all let's use em!
		   	@lines = json['conversation_quips'].map { |quip| quip['sentence'] }
		    @lines.shuffle!
		  else
		    ap "Download Failed: #{response.error_message}"
		  end
		end

	end

	def seed_lines
		ap "seeding lines"
		@lines = []
		@lines.push "Dandruff tastes way better than it looks"
		@lines.push "I can't be bothered to shower every day"
		@lines.push "if someone just says 'k' or 'okay'. I mean come on, elaborate people!"
		@lines.push "So as of this morning I decided 'To hell with the doctors' and quit my antidepressants."
		@lines.push "That's not what Jesus teaches"
		@lines.push "I made my work drug free, by taking all the drugs in people's desks."
		@lines.push "My last fart sounded like an old man's death rattle."
		@lines.push "I'm celebrating the 1 year anniversary of my last shower."
		@lines.push "I've pretty much given up bathing now that I found dryer sheets."
		@lines.push "Mind if I floss?"
		@lines.push "Sounds like we've got a douche bag contest going on over here!"
		@lines.push "My nipples are dead inside."
	end


end
