rendering
renderBodyOn: html
	| it |
	html tbsNav
		bePills;
		with: [ it := html tbsNavItem.
			sec = #home
				ifTrue: [ it beActive ].
			it
				with: [ html anchor
						callback: [ sec := #home ];
						with: 'Home' ].
			it := html tbsNavItem.
			sec = #latest
				ifTrue: [ it beActive ].
			it
				with: [ html anchor
						callback: [ sec := #latest ];
						with: 'Latest' ].
			it := html tbsNavItem.
			sec = #featured
				ifTrue: [ it beActive ].
			it
				with: [ html anchor
						callback: [ sec := #featured ];
						with: 'Featured' ] ]