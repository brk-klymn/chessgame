building
imageForm

	^ (PNGReadWriter on: 
			(ZnBase64Encoder new decode: PolymorphSystemSettings pharoLogoContents) readStream) 
			nextImage