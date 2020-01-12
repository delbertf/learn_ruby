def echo(arg)
	arg
end

def shout(word)
	word.upcase
end

def repeat(word, times=2)
	[word] * times * ' '
end

def start_of_word(word, start)
	word[0,start]
end

def first_word(word)
	word.split(" ")[0]
end

def titleize(word)
	excluded_words = ["and","over","the"]
	word.split.each_with_index.map { |str, idx| excluded_words.include?(str) && idx > 0 ? str : str.capitalize }.join(" ")


end