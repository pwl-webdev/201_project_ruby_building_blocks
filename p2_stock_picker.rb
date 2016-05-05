def stock_picker(prices)
	maxgain = 0
	idxlow = 0
	idxhigh = 0
	prices.each_with_index do |price, index|
		#puts price.to_s+" "+index.to_s
		prices.each_with_index do |price2, index2|
		#	puts price.to_s+" "+index.to_s+" "+index2.to_s
			if(price <= price2 && price2 - price > maxgain && index2 > index)
				maxgain = price2 - price
				idxlow = index
				idxhigh = index2
			end
		end
	end
	return [idxlow, idxhigh]
end

stock_picker([17,3,6,9,15,8,6,1,10])
stock_picker([17,3,6,9,15,8,6,7,1])