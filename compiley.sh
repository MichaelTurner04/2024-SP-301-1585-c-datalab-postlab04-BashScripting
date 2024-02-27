#!/bin/bash

compile_file()
{
    INPUT="$1"
    OUTPUT="$2"

    echo ""
    echo "Function parameters"
    echo "- compile_file's first parameter (\$1) is \"$1\""
    echo "- compile_file's second parameter (\$2) is \"$2\""
    echo "- \$INPUT is \"$INPUT\""
    echo "- \$OUTPUT is \"$OUTPUT\""
    echo ""

    g++ -o "$OUTPUT" "$INPUT"
}

echo "Positional parameters:"
echo "- First positional parameter (\$1) is \"$1\""
echo "- Second positional parameter (\$2) is \"$2\""
echo "- Joined positional parameters (\$@) is \"$@\""

compile_file "$@"
