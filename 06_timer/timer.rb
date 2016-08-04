class Timer
  #write your code here
	attr_accessor :seconds

	def initialize
  		@seconds = 0
	end

	def time_string
		minutes = @seconds / 60
		adjusted_seconds = @seconds - (minutes * 60)
		hours = (minutes / 60)
		adjusted_minutes = minutes - (hours * 60)
		seconds_string = format("%02d", (@seconds - (hours * 60 * 60) - (minutes * 60)))
		return format("%02d", hours) + ":" + format("%02d", adjusted_minutes) + ":" + format("%02d", adjusted_seconds)
	end
end

t = Timer.new
puts t.seconds
puts t.time_string

t.seconds = 12
puts t.seconds
puts t.time_string


