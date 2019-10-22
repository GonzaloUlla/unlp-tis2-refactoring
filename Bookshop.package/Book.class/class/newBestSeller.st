instance creation
newBestSeller
	| bs |
	bs := Book new.
	bs isBestSeller: true.
	^ bs