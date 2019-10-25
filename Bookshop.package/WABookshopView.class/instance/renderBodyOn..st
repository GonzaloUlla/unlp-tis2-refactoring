rendering
renderBodyOn: html
	html tbsNav
		bePills;
		with: [ self renderNavigationItemOn: html section: #home anchorName: 'Home'.
			self renderNavigationItemOn: html section: #latest anchorName: 'Latest'.
			self renderNavigationItemOn: html section: #featured anchorName: 'Featured' ]