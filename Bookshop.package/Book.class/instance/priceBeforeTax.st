accessing
priceBeforeTax
	| com p p2 |
	com := self isBestSeller
		ifTrue: [ price / 50 ]
		ifFalse: [ price / 100 ].
	p := self isBestSeller
		ifTrue: [ price * 1.1 ]
		ifFalse: [ price ].
	p2 := p + com.
	^ p2