rendering-navigation
renderNavigationFeaturedOn: html
	| navigationItem |
	navigationItem := html tbsNavItem.
	sec = #featured
		ifTrue: [ navigationItem beActive ].
	navigationItem
		with: [ html anchor
				callback: [ sec := #featured ];
				with: 'Featured' ]