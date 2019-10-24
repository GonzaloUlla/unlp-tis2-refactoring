rendering-navigation
renderNavigationHomeOn: html
	| navigationItem |
	navigationItem := html tbsNavItem.
	sec = #home
		ifTrue: [ navigationItem beActive ].
	navigationItem
		with: [ html anchor
				callback: [ sec := #home ];
				with: 'Home' ]