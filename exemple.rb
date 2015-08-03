class Lift


	def initialize
		@max_weight=400
		@current_floor=1
		@weight=0

	end

	def move floor
		return puts("The floor should be an integer number between 1 and 25") unless floor.instance_of?(Fixnum)&&(1..25).cover?(floor)
		return puts("Current weight (#{@weight}kg)is more than allowed (#{@max_weight})kg.You will stay at the current floor,sorry.")unless allowed_weight?
		return puts("You are already on the #{floor}floor.Choose another floor or get out!")if @current_floor == floor
		if floor > @current_floor
			up floor
			set_current_floor! floor
		else
			down floor
			set_current_floor! floor
		end
		puts "Stop.You are on the #{@current_floor}floor"				
	end

	def release! weight
		@weight-=weight
	end

	def load! weight
		@weight+=weight
	end
	
	def allowed_weight?
		@weight<=@max_weight
	end	
		

	
	
	def up floor
		puts "Moving up ..."
		@current_floor.upto(floor) do |i|
			sleep 1
			puts "#{i}floor"
		end	
	end

	def down
		puts "Moving down ..."
		@current_floor.downto(floor) do |i|
			 sleep 1
			 puts "#{i}floor"
		end	
	end	

	def set_current_floor! floor
		@current_floor=floor
	end

end	

lift=Lift.new
lift.load! 440
lift.release! 80
lift.move 5