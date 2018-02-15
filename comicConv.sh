cbr()
{
	compName=$(basename "$1" .cbr).rar
	dirName=$(basename "$1" .cbr)
	pdfName=$(basename "$1" .cbr).pdf

	cp "$1" $rarName
	unrar x -y -inul $compName
	convert $dirName/* $pdfName
	rm -r $dirName
		
	echo "Conversion complete, please enjoy $pdfName"
}

cbz()
{
	compName=$(basename "$1" .cbz).zip
	dirName=$(basename "$1" .cbz)
	pdfName=$(basename "$1" .cbz).pdf

	cp "$1" $compName
	unrar x -y -inul $compName
	convert $dirName/* $pdfName
	rm -r $dirName
		
	echo "Conversion complete, please enjoy $pdfName"
}

cb7()
{
	compName=$(basename "$1" .cb7).7z
	dirName=$(basename "$1" .cb7)
	pdfName=$(basename "$1" .cb7).pdf

	cp "$1" $compName
	p7zip -d $compName
	convert $dirName/* $pdfName
	rm -r $dirName
		
	echo "Conversion complete, please enjoy $pdfName"
}

cbt()
{
	compName=$(basename "$1" .cbt).tar
	dirName=$(basename "$1" .cbt)
	pdfName=$(basename "$1" .cbt).pdf

	cp "$1" $compName
	tar xf $compName $dirName
	convert $dirName/* $pdfName
	rm -r $dirName
		
	echo "Conversion complete, please enjoy $pdfName"
}

cba()
{
	compName=$(basename "$1" .cba).ace
	dirName=$(basename "$1" .cba)
	pdfName=$(basename "$1" .cba).pdf

	cp "$1" $compName
	unace e $compName
	convert $dirName/* $pdfName
	rm -r $dirName
		
	echo "Conversion complete, please enjoy $pdfName"
}

version()
{
	echo
	echo "Comic Book Converter:"
	echo "version 2.0.0"
	echo "Written by Zachary Brasseaux"
	echo
	exit 0
}

usage()
{
    echo
    echo 'Usage: ./comicConv.sh [flags/filetype] [input_comic_file]'
    echo
    echo "Options:"
    echo '-v | --version    Displays current version information'
    echo '-h | --help       Displays a full list of options'
    echo
    echo "Options for declaring file type:"
    echo
    echo '-z | --cbz'
    echo '-r | --cbr'
    echo '-7 | --cb7'
    echo '-t | --cbt'
    echo '-a | --cba'
    echo
    echo "Required programs:"
    echo "	image-magic"
    echo "	unrar"
    echo "	p7zip"
    echo "	unace"
    exit 0
}

throwError()
{
	echo
	echo "Invalid filetype/flags and/or file specified. Please try again with a valid file."
	echo " try './comicConv.sh -h' or './comicConv.sh --h' for more [options]"
	echo
	exit 1
}

while [ $1 != "" ]; do
	case $1 in
		-v | --version ) 	 	version
						 	 	;;
		-h | --help ) 		 	usage
					  		 	;;
		-z | --cbz ) 			shift
								cbz
							 	;;
		-r | --cbr ) 			shift
								cbr
							 	;;
		-7 | --cb7 )			shift
								cb7
							 	;;
		-t | --cbt ) 			shift
								cbt
							 	;;						 							 
		-a | --cba ) 			shift
								cba
							 	;;
		* )					 	throwError
	esac
		shift
done