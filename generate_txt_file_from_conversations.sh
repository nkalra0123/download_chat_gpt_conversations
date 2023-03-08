for i in `ls *.txt`;
do
    title=`jq .title $i`
    output_file=$i-extracted-text
    echo "Conversation $title" >> $output_file
    jq '.mapping[] | .message | .author,.content |select(.role !="system") | select(.parts[0] !="") | .role,.parts[0] | select( . != null ) ' $i >> $output_file
done

