singleton
instance
	^ Instance
		ifNil: [ Instance := self new.
			self loadBooks.
			Instance ]