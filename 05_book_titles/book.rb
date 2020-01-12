class Book
# write your code here
	attr_accessor :title

	def title=(value)
		excluded_words = ["and","over","the","in","of","a","an"]
		@title = value.split.each_with_index.map { |str, idx| excluded_words.include?(str) && idx > 0 ? str : str.capitalize }.join(" ")
	end
end
