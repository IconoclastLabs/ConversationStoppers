class Stoppers
	attr_reader :lines

	def initialize
		@lines = []
		self.load_lines
	end

	def next_line
		if @lines.blank?
			self.load_lines
		end

		@lines.pop
	end

	def load_lines
		@lines.push "Taco Libre"
		@lines.push "T Libre"
		@lines.push "Taco L"
		@lines.push "Tacibre"
		@lines.push "aco Lib"

		@lines.shuffle!
	end


end