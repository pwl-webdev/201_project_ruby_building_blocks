def substrings(words, dictionary)
	frequencies = Hash.new(0)
	xwords = words.split(" ")
	puts xwords
	xwords.each do |word|
		dictionary.each do |dicword|
			if word.downcase.include? dicword.downcase
				frequencies[dicword] += 1;
			end
		end
	end
	puts frequencies
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
#substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)