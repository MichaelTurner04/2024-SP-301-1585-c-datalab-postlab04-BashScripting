for file in *
	do
	echo "v) View" $file
	echo "e) Edit " $file
	echo "c) Compile " $file
	echo "x) Execute " $file
	echo "q) Quit" $file
	input=""
	read input
	case $input in
		v)
			echo "Viewing file."
			doThatThing $file "v"
			;;
		e)
			echo "Editing file."
			doThatThing $file "e"
			;;
		c)
			echo "Compiling file."
			doThatThing $file "c"
			;;
		x)
			echo "executing file."
			doThatThing "$file" "x"
			;;
		q)
			echo "quitting"
			exit
			;;
		*)
			echo "INVALID RESPONSE"
			echo "skipping this file!"
			;;
	esac
done
doThatThing()
{
	local file="$1"
	local action="$2"
	case $action in
		v)
			less "$file"
			;;
		e)
			nano "$file"
			;;
		c)
			g++ "$file"
			;;
		x)
			./"$file"
			;;
	esac
}
