initialization
initialize
	| app |
	app := WAAdmin register: self asApplicationAt: #bookshop.
	app addLibrary: TBSDevelopmentLibrary