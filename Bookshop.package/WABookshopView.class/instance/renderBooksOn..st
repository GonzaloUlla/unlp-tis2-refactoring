rendering
renderBooksOn: html
	^ bookstore books
		do: [ :x | 
			| t |
			x title size > 30
				ifTrue: [ t := x title first: (30 min: x title size).
					t := t , '...' ]
				ifFalse: [ t := x title ].
			html tbsThumbnail
				style: 'display:inline-block;width:300px;margin:20px;';
				with: [ html image placeHolder: '100%x180'.
					html heading level4 with: t.
					html paragraph: x author name.
					html heading level5 with: x price ] ]