rendering-navigation
renderNavigationLatestOn: html
	| navigationItem |
	navigationItem := html tbsNavItem.
	sec = #latest
		ifTrue: [ navigationItem beActive ].
	navigationItem
		with: [ html anchor
				callback: [ sec := #latest ];
				with: 'Latest' ]