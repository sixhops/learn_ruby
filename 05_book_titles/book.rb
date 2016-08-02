class Book
# write your code here
	attr_accessor :title

	def initializer(t)
		@title = t.capitalize!
	end
end
