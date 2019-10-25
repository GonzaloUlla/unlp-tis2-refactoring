rendering-navigation
renderNavigationItemOn: html section: aSection anchorName: anAnchorName
	| navigationItem |
	navigationItem := html tbsNavItem.
	section = aSection
		ifTrue: [ navigationItem beActive ].
	navigationItem
		with: [ html anchor
				callback: [ section := aSection ];
				with: anAnchorName ]