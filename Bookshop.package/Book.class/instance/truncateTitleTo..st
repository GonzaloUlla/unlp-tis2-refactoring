truncation
truncateTitleTo: anInteger
	| truncatedTitle |
	self title size > anInteger
		ifTrue: [ truncatedTitle := self title first: (anInteger min: self title size).
			truncatedTitle := truncatedTitle , '...' ]
		ifFalse: [ truncatedTitle := self title ].
	^ truncatedTitle