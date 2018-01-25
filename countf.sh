
recList()
{
	if [ "$filePath" != "" ]; then
		echo "There are $(ls -alR $filePath | grep '^-' | wc -l) files"
        dirNum=$(expr "$(find $filePath -type d | wc -l)" - 1)
		echo "There are $dirNum  directories"
		exit 0
	else
		echo "There are $(ls -alR . | grep '^-' | wc -l) files"
        dirNum=$(expr "$(find . -type d | wc -l)" - 1)
		echo "There are $dirNum directories"
		exit 0
	fi
}

usage()
{
    echo
    echo 'Usage: ./countf.sh [options] [/path/to/target/directory]'
    echo
    echo "Options:"
    echo '-v | --version    Displays current version information'
    echo '-h | --help       Displays a full list of options'
    echo
    exit 0
}

invldOptn()
{
    echo "Invalid argument. Try -h or --help for more options."
    echo
    exit 1
}

version()
{
    echo "Version 0.0.2"
    echo "Zachary Brasseaux 09 Jan. 2018"
    exit 0
}

checkOptn()
{
	if [ "$(realpath $1)" != "" ]; then
		filePath="$(realpath -z $1)"
		recList
	else
		invldOptn
	fi
}


while [ "$1" != "" ]; do
    case $1 in
        -v | --version )        version
                                ;;
        -h | --help )           usage
                                ;;
        * )                     filePath=$(realpath $1)
                                recList
    esac
    shift
done

recList
