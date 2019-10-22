rendering
renderContentOn: html
	| it |
	html
		tbsContainerFluid: [ html
				tbsPageHeader: [ html
						heading: [ html text: 'Online Bookshop'.
							html space.
							html small: 'The best catalog around!' ] ].
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
								with: 'Featured' ] ].
			bookstore books
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
							html heading level5 with: x price ] ] ].
	html tbsContainerFluid: [ html paragraph: '(c) 2019 Bookshop' ]