#write your code here
def translate(phrase)
	vowels = ["a", "e", "i", "o", "u"]

	words = phrase.split(" ")

	words.each do |word|

		first_vowel_index = 0

		letters = word.chars
		vowel_found = false
		previous_char = ""

		letters.each do |char|
			vowels.each do |vowel|
				if (char == vowel) && (previous_char != "q")
					vowel_found = true
					break
				end
			end
			if vowel_found
				break
			end
			first_vowel_index += 1
			previous_char = char
		end

		if first_vowel_index == 0
			word << "ay"
		else
			suffix = word.slice!(0, first_vowel_index) + "ay"
			word << suffix
		end
	end
	phrase = words.join(" ")
	return phrase
end
