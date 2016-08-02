#write your code here
def echo(x)
	x
end

def shout(x)
	x.upcase
end

def repeat(x, num=2)
	# Should refactor this - the loop is ugly
	i = 0
	repeat_x = ""
	while i < (num-1) do
		repeat_x += (x + " ")
		i += 1
	end
	repeat_x += x
	return repeat_x
end

def start_of_word(x, num)
	return x[0...num]
end

def first_word(x)
	words = x.split(" ")
	return words[0]
end

def titleize(x)
	words = x.split(" ")
	words.each do |x|
		if ((x != "the") && (x != "over") && (x != "and")) || (x == words[0])
			x.capitalize!
		end
	end
	x = words.join(" ")
end
