require_relative "main"

module Lift

end


lift=Lift::Main.new

lift.load!404
lift.move 10
lift.release! 100
lift.move 10
lift.move 2
