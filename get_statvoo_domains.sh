
wget https://statvoo.com/dl/top-1million-sites.csv.zip
unzip top-1million-sites.csv.zip
awk -F "\"*,\"*" '{print $2}' top-1million-sites.csv >> statvoo-1m-domains.txt
rm top-1million-sites.csv.zip
rm top-1million-sites.csv

