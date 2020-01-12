def translate(sentence)
		

	#sentence.split.map { |word| vowels.include?(word[0]) ? word + "ay" :  word[1..-1] + word[0] + "ay"  }.join(" ")
	
end


def is_vowel(char)
	["a","e","i","o","u"].include?(char)
end


def translate_word(word)
	if is_vowel word[0]
		word + "ay"
	else
		substr = ""
		n = 0

		while !is_vowel word[n] or (word[n] == 'u' and word[n-1] == 'q')
			substr += word[n]
			n += 1
			if substr[-2..-1] == 'qu'
				break
			end
		end

		word = word[n..-1] + substr + "ay"
	end
end


def translate(sentence)
	sentence.split.map { |word| translate_word word }.join(" ")
end
