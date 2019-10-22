accessing
price
	| com p p2 p3 |
	self isBestSeller
		ifTrue: [ p := price * 1.1.
			com := price / 50 ]
		ifFalse: [ p := price.
			com := price / 100 ].
	p2 := p + (p * 21 / 100).
	p3 := p2 + com.
	^ p3