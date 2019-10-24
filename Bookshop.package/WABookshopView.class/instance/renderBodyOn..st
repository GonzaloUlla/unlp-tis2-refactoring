rendering
renderBodyOn: html
	html tbsNav
		bePills;
		with: [ self renderNavigationHomeOn: html.
			self renderNavigationLatestOn: html.
			self renderNavigationFeaturedOn: html ]