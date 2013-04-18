class Stoppers
	attr_reader :lines

	def initialize
		@lines = []

		# get local quip count, if no quips then seed data
		@lines = App::Persistence['quips'] ||= self.seed_lines
		# get remote quip count
		self.remote_update
		# if count does not match async pull new quips library
		#self.load_lines
	end

	def next_line
		if @lines.blank?
			#refurnish
			@lines = App::Persistence['quips']
		end

		@lines.pop
	end

	def remote_update

		# Let's go check if we need updates
		BW::HTTP.get("http://frattmans.com:4000/api.json") do |response|
		  if response.ok?
		    json = BW::JSON.parse(response.body.to_str)
		    #Check if counts differ to 
		    if json['size'] != @lines.size
		    	# go get em
		    	self.perform_update
		    end
		  else
		    p "Checkup Failed: #{response.error_message}"
		  end
		end
	end

	def perform_update
		p "GO GET EM TIGER!"
	end

	def seed_lines
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
		@lines.shuffle!
	end


end
