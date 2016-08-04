class Book
# write your code here
	def title=(t)
		@title = titleize(t)
	end
	def title
		@title
	end

	def initializer(title)
		@title = titleize(title)
	end

	private

	def titleize(phrase)
		words_to_not_capitalize = ["the", "and", "or", "in", "of", "a", "an"]
		index = 0
		past_first_word = false
		words = phrase.split(" ")
		words.each do |word|
			word.capitalize!
			words_to_not_capitalize.each do |w|
				if (word.downcase == w) && (index > 0) then word.downcase! end
			end
			index += 1
		end
		phrase = words.join(" ")
		return phrase
	end
end
