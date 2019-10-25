instance creation
newBestSeller
	| bestSeller |
	bestSeller := Book new.
	bestSeller isBestSeller: true.
	^ bestSeller