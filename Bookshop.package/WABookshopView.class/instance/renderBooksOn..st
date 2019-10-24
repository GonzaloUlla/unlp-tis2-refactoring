rendering-elements
renderBooksOn: html
	^ bookstore books do: [ :eachBook | self renderBookThumbnailOn: html of: eachBook withTitle: (eachBook truncateTitleTo: 30) ]