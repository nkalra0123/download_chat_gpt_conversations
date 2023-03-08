ids=`jq -r .items[].id result.json`

for i in $ids; do
    if [ -f $i.txt ] 
    then 
        echo "skipping as $i.txt file already exists"
        continue 1
    fi
    echo "downloading conversation $i";
    http  --verify=no --follow --timeout 3600 GET "https://chat.openai.com/backend-api/conversation/$i" \
        Accept:'*/*' \
        Accept-Language:'en-GB,en-US;q=0.9,en;q=0.8' \
        Authorization:'Bearer <your token>' \
        Connection:'keep-alive' \
        Content-Type:'application/json' \
        Cookie:'<your cookie>' \
        Referer:"https://chat.openai.com/chat/$i" \
        Sec-Fetch-Dest:'empty' \
        Sec-Fetch-Mode:'cors' \
        Sec-Fetch-Site:'same-origin' \
        User-Agent:'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36' \
        sec-ch-ua:'"Chromium";v="104", " Not A;Brand";v="99", "Google Chrome";v="104"' \
        sec-ch-ua-mobile:'?0' \
        sec-ch-ua-platform:'"macOS"' > $i.txt
    sleep 10
done
