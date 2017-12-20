
# Zachary Brasseaux (c) 2017

echo "Input the comic book file you wish to convert, then hit [ENTER]"

read inFile

for f in $inFile; do
	
	if [ ${f: -4} == ".cbr" ]; then
	
		compName=$(basename "$f" .cbr).rar
		dirName=$(basename "$f" .cbr)
		pdfName=$(basename "$f" .cbr).pdf

		cp "$f" $rarName
		unrar x -y -inul $compName
		convert $dirName/* $pdfName
		rm -r $dirName
		
		echo "Conversion complete, please enjoy $pdfName"
	fi
	
	if [ ${f: -4} == ".cbz" ]; then
	
		compName=$(basename "$f" .cbz).zip
		dirName=$(basename "$f" .cbz)
		pdfName=$(basename "$f" .cbz).pdf

		cp "$f" $compName
		unrar x -y -inul $compName
		convert $dirName/* $pdfName
		rm -r $dirName
		
		echo "Conversion complete, please enjoy $pdfName"
	fi

	if [ ${f: -4} == ".cb7" ]; then
	
		compName=$(basename "$f" .cb7).7z
		dirName=$(basename "$f" .cb7)
		pdfName=$(basename "$f" .cb7).pdf

		cp "$f" $compName
		p7zip -d $compName
		convert $dirName/* $pdfName
		rm -r $dirName
		
		echo "Conversion complete, please enjoy $pdfName"
	fi

	if [ ${f: -4} == ".cbt" ]; then
	
		compName=$(basename "$f" .cbt).tar
		dirName=$(basename "$f" .cbt)
		pdfName=$(basename "$f" .cbt).pdf

		cp "$f" $compName
		tar xf $compName $dirName
		convert $dirName/* $pdfName
		rm -r $dirName
		
		echo "Conversion complete, please enjoy $pdfName"
	fi

	if [ ${f: -4} == ".cba" ]; then
	
		compName=$(basename "$f" .cba).ace
		dirName=$(basename "$f" .cba)
		pdfName=$(basename "$f" .cba).pdf

		cp "$f" $compName
		unace e $compName
		convert $dirName/* $pdfName
		rm -r $dirName
		
		echo "Conversion complete, please enjoy $pdfName"
	fi

done
