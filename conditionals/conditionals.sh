# if else elif
# if [[ -z "$string" ]]; then
#     echo "String is empty"
# elif [[ -n "$string" ]]; then
#     echo "String is not empty"
# fi
a=3
b=6
# wrap strings in double quotes
Name="Jude"
if (( $a < $b )); then
    echo "$a is smaller than $b"
fi

if (( $Name == 'Jude' )); then
    echo "name is Jude"
fi

if [[ $Name == 'Jude' ]]; then
    echo "name is Jude2"
fi

if [[ "$a" < "$b" ]]; then
    echo " A is less than B"
fi

#if else elif
if [[ -z "$Empty" ]]; then
    echo "String is empty2"
    elif [[ -n "$Name" ]]; then
    echo "String is not empty2"
fi

if [[ -x "./file.txt" ]]; then
    echo 'Script exists'
else
    echo 'Script doesnt exist'
fi