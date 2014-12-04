for e in $(find . -type f )
    do 
        count=$(cat $e | wc -l)
        if [ $count -gt 10 ]
            then echo "$e;$count"
        mv $e $(echo $e | sed 's/f/g/g')
        fi
done
