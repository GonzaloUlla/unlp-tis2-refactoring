test
testTruncateTitleTo
	self assert: (bestSeller truncateTitleTo: 4) equals: 'Long...'.
	self assert: (book truncateTitleTo: 20) equals: 'Short Title'