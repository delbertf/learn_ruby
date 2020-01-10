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