#!/bin/bash
doThatThing() {
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
            g++ "$file" -o "${file%.cpp}"
            ;;
        x)
            ./"$file"
            ;;
    esac
}

for file in *
do
    echo "v) View $file"
    echo "e) Edit $file"
    echo "c) Compile $file"
    echo "x) Execute $file"
    echo "q) Quit $file"
    
    read input
    
    case $input in
        v)
            echo "Viewing file."
            doThatThing "$file" "v"
            ;;
        e)
            echo "Editing file."
            doThatThing "$file" "e"
            ;;
        c)
            echo "Compiling file."
            doThatThing "$file" "c"
            ;;
        x)
            echo "Executing file."
            doThatThing "$file" "x"
            ;;
        q)
            echo "Quitting"
            exit
            ;;
        *)
            echo "INVALID RESPONSE"
            echo "Skipping this file!"
            ;;
    esac
done
