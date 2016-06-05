def caesar_cipher(input, shift)
	ascii = []
	input.each_byte do |iter|
		if iter >= 65 && iter <= 90
			if iter + shift > 90
				ascii.push((64+(shift+iter-90)).chr)
			else
				ascii.push((iter+shift).chr)
			end
		elsif  iter >= 97 && iter <= 122
			if iter + shift > 122
				ascii.push((96+(shift+iter-122)).chr)
			else
				ascii.push((iter+shift).chr)
			end
		else
			ascii.push(iter.chr)
		end
	end
	return ascii.join
end

# caesar_cipher("What a string!", 5)