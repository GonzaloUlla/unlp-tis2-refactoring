test
testPriceBeforeTax
	self assert: bestSeller priceBeforeTax closeTo: 112.
	self assert: book priceBeforeTax closeTo: 101