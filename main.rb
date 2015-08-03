require_relative "engine"
require_relative "validator"


module Lift
	class Main
		include Validator

		def initialize
			@weight=0
			@engine=Engine.new
		end

		def move floor
			@engine.floor=floor
			if valid?
				@engine.move floor
			else
				puts @error
			end
		end
			def load! weight
				@weight += weight
			end

			def release! weight
				@weight -= weight
			end
		
	end
end

