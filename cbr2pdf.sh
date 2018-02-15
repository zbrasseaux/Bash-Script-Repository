
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
		echo $dirName
		convert $dirName/* $pdfName
		rm -r $dirName
		
		echo "Conversion complete, please enjoy $pdfName"
	fi

done
