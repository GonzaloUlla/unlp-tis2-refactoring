rendering-elements
renderBookThumbnailOn: html of: aBook withTitle: aTitle
	html tbsThumbnail
		style: 'display:inline-block;width:300px;margin:20px;';
		with: [ html image placeHolder: '100%x180'.
			html heading level4 with: aTitle.
			html paragraph: aBook author name.
			html heading level5 with: aBook price ]