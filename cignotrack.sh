#!/bin/bash
#Scritto da Cignoraptor

echo " "
bar ()
{
BAR='*0*1*0*1*0*1*0*1*0*1*0*1 \e[00;34m !'    
                         
for i in {0..59}; do
    echo -ne "\r${BAR:0:$i}" 
    sleep 0.05
done
}
bar
echo " "
echo " "
echo -e "\e[00;44m______________________\e[00mCIGNOTRACK\e[00;44m______________________\e[00m"
echo " "

echo -e "\e[01;34m--------------------------------------------------------------------------------\e[00m"
echo -e "OSINT tool for extract \e[01;36mInformations, \e[01;33mmetadata \e[00m \e[01;34mSocial media\e[00m tracking\e[00m and \e[00;31mprivacy threat\e[00m"
echo -e "\e[01;34m________________________________________________________________________________\e[00m"
echo " "
echo -e "CODENAME: \e[01;46mrage of the swan\e[00m -- \e[00;31m Coded for privacy testing - The author decline any responsability for 
any illegal use of this tool\e[00m"
echo " "
bar
echo -e "\e[01;34mcoded by Cignoraptor\e[00m --- contact for help or suggestions > \e[00;34mroot4sec6per3@openmailbox.org\e[00m"
echo " "
echo "TARGET DOMAIN ... Example: domain.org"
read target

echo -e "\e[01;32mDomain IP lookup\e[00m"
echo " "
links2 -dump http://www.ip-tracker.org/locator/ip-lookup.php?ip=$target > domin.txt
echo " "
cat domin.txt | grep --color -oP 'IP Address:.*$'
echo " "
cat domin.txt | grep --color -oP 'Country:.*$'
echo " "
cat domin.txt | grep --color -oP 'City:.*$'
echo " "
cat domin.txt | grep --color -oP 'ISP:.*$'
echo " "
cat domin.txt | grep --color -oP 'Organization:.*$'
echo " "
rm domin.txt

echo -e "Insert ENTER for start the whois \e[00;33mdatabase search\e[00m"
read invio23

whois $target

sleep 1

echo " "
echo -e "--->\e[00;34m20 more used words in the home page (\e[00;31mBeta phase!\e[00;34m)\e[00m"
sleep 1
links2 -ssl.certificates 0 -dump $target > toppar
echo " "

sed 's/\<e\>//g' toppar > toppar2 
sed 's/\<la\>//g' toppar2 > toppar3  
sed 's/\<in\>//g' toppar3 > toppar4  
sed 's/\<a\>//g' toppar4 > toppar5 
sed 's/\<o\>//g' toppar5 > toppar6  
sed 's/\<nel\>//g' toppar6 > toppar7
sed 's/\<un\>//g' toppar7 > toppar8  
sed 's/\<una\>//g' toppar8 > toppar9
sed 's/\<who\>//g' toppar9 > toppar10  
sed 's/\<per\>//g' toppar10 > toppar11
sed 's/\<ha\>//g' toppar11 > toppar12 
sed 's/\<il\>//g' toppar12 > toppar13
sed 's/\<del\>//g' toppar13 > toppar14  
sed 's/\<alla\>//g' toppar14 > toppar15
sed 's/\<ho\>//g' toppar15 > toppar16  
sed 's/\<è\>//g' toppar16 > toppar17
sed 's/\<Ha\>//g' toppar17 > toppar18
sed 's/\<della\>//g' toppar18 > toppar19  
sed 's/\<le\>//g' toppar19 > toppar20
sed 's/\<dei\>//g' toppar20 > toppar21
sed 's/\<dell\>//g' toppar21 > toppar22  
sed 's/\<likes\>//g' toppar22 > toppar23  
sed 's/\<replies\>//g' toppar23 > toppar24
sed 's/\<http\>//g' toppar24 > toppar25
sed 's/\<ly\>//g' toppar25 > toppar26 
sed 's/\<bit\>//g' toppar26 > toppar27
sed 's/\<0\>//g' toppar27 > toppar28 
sed 's/\<retweet\>//g' toppar28 > toppar29
sed 's/\<alle\>//g' toppar29 > toppar30
sed 's/\<where\>//g' toppar30 > toppar31
sed 's/\<piace\>//g' toppar31 > toppar32
sed 's/\<mi\>//g' toppar32 > toppar33
sed 's/\<commenta\>//g' toppar33 > toppar34
sed 's/\<immagine\>//g' toppar34 > toppar35 
sed 's/\<contenere\>//g' toppar35 > toppar36
sed 's/\<all\>//g' toppar36 > toppar37
sed 's/\<the\>//g' toppar37 > toppar38 
sed 's/\<is\>//g' toppar38 > toppar39
sed 's/\<www\>//g' toppar39 > toppar40
sed 's/\<com\>//g' toppar40 > toppar41 
sed 's/\<ed\>//g' toppar41 > toppar42
sed 's/\<da\>//g' toppar42 > toppar43
sed 's/\<htm\>//g' toppar43 > toppar44
sed 's/\<it\>//g' toppar44 > toppar45
sed 's/\<lang\>//g' toppar45 > toppar46
sed 's/\<the\>//g' toppar46 > toppar47
sed 's/\<and\>//g' toppar47 > toppar48
sed 's/\<the\>//g' toppar48 > toppar49
sed 's/\<to\>//g' toppar49 > toppar50 
sed 's/\<of\>//g' toppar50 > toppar51
sed 's/\<will\>//g' toppar51 > toppar52
sed 's/\<what\>//g' toppar52 > toppar53

rm toppar2
rm toppar3
rm toppar4
rm toppar5
rm toppar6
rm toppar7
rm toppar8
rm toppar9
rm toppar10
rm toppar11
rm toppar12
rm toppar13
rm toppar14
rm toppar15
rm toppar16
rm toppar17
rm toppar18
rm toppar19
rm toppar20
rm toppar21
rm toppar22
rm toppar23
rm toppar24
rm toppar25
rm toppar26
rm toppar27
rm toppar28
rm toppar29
rm toppar30
rm toppar31
rm toppar32
rm toppar33
rm toppar34
rm toppar35
rm toppar36
rm toppar37
rm toppar38
rm toppar39
rm toppar40
rm toppar41
rm toppar42
rm toppar43
rm toppar44
rm toppar45
rm toppar46
rm toppar47
rm toppar48
rm toppar49
rm toppar50
rm toppar51
rm toppar52



#echo "INSERISCI NUOVO NOME FILE..ELIMINA E,LA,IN,A,O,NEL ECC..."
#read nuov
sed 's/di//g' toppar53 > risu
rm toppar53
#echo "INSERISCI PAROLE DA CERCARE "
#read uno
#read due

echo " "
echo -e "\e[01;37m====================================\e[00m"

echo -e "\e[01;33mTOP 20 WORDS\e[00m"
    cat risu | tr -cs "[:alnum:]" "\n"| tr "[:lower:]" "[:upper:]" | awk '{h[$1]++}END{for (i in h){print h[i]" "i}}'|sort -nr | cat -n | head -n 20
echo " "
rm toppar
rm risu
echo " "

echo -e "\e[00;31mEMAIL SEARCH\e[00m..."
echo -e "\e[00;33mWarning\e[00m: The spider search may be a long process"
echo " "
echo "Insert ENTER for start..."
read inviasec
echo " "

links2 -ssl.certificates 0 -dump $target > et.txt
sleep 0.5
echo -e "\e[01;33m$target emails from website\e[00m..."
cat et.txt | grep --color -o "[^:]*@$target"
echo -e "\e[01;33mgmail emails from website\e[00m..."
cat et.txt | grep --color -o "[^:]*@gmail.com"
rm et.txt
echo " "
echo -e "\e[00;33mSTARTING EMAIL SPIDER\e[00m..."
sleep 1.5

wget --no-check-certificate -qO- $target > fs.html
cat fs.html | egrep -o "(http|https):.*\">" | awk 'BEGIN {FS="\""};{print $1}' > sm.txt


for line in `cat sm.txt`; do

links2 -ssl.certificates 0 -dump $line | grep --color -o "[^:]*@$target"
done
sleep 1

echo " "
echo -e "\e[00;34mSearching Gmail emails associated using google dorks\e[00m"
sleep 2
links2 -http.fake-user-agent "Mozilla/5.0 (X11; FreeBSD amd64; rv:26.0) Gecko/20100101 Firefox/26.0" -ssl.certificates 0 -dump google.it/search?q=site:$target+AND+"%40gmail.com" | grep --color -o "[^:]*@gmail.com"

echo " "
sleep 1
echo -e "\e[01;33mSearch and EXTRACTION OF\e[00m images in the website..."
echo "Insert ENTER  for start..."
read ent5670

echo " "
sleep 1

mkdir -p images-analysis

wget --user-agent="Mozilla/5.0 (X11; FreeBSD amd64; rv:26.0) Gecko/20100101 Firefox/26.0" --no-check-certificate -e robots=off \
-H -nd -nc -np \
--recursive -p \
--level=1 \
--accept jpg,jpeg,png \
--convert-links -N \
--limit-rate=200k \
--wait 2.0 \
-P images-analysis $target


#Extact Metadata con Exiftool

cd images-analysis
echo " "
echo -e "\e[00;31mMETADATA EXTRACTION\e[00m..."
echo " "
echo -e "\e[00;33mArtist...\e[00m"
exiftool * | grep --color -E Artist
echo "============================="
echo -e "\e[00;33mSoftware...\e[00m"
exiftool * | grep --color -E Software
echo "============================= "
echo -e "\e[00;33mMake...\e[00m"
exiftool * | grep --color -E Make
echo "============================= "
echo -e "\e[00;33mAuthor...\e[00m"
exiftool * | grep --color -E Author
echo "============================="
echo -e "\e[00;33mCreator...\e[00m"
exiftool * | grep --color -E Creator
echo "============================="
echo -e "\e[00;33mCamera model...\e[00m"
exiftool * | grep --color -E "Camera Model Name"
echo "============================="
echo -e "\e[00;33mSerial number...\e[00m"
exiftool * | grep --color -E "Serial Number"
echo "============================="
echo -e "============\e[01;33mGPS LATITUDE\e[00m================="
exiftool * | grep --color -E "GPS Latitude"
echo " "
echo "============================="
 echo -e "============\e[01;33mGPS LONGITUDE\e[00m================="
exiftool * | grep --color -E "GPS Longitude"
echo " "
cd -

sleep 1
echo -e "\e[01;33mSearch and EXTRACTION OF\e[00m PDF files from Bing results..."
echo "Insert ENTER for start..."
read inv378

echo " "
sleep 1

mkdir -p pdf-analysis

wget --no-check-certificate -e robots=off -H --user-agent="Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.3) Gecko/2008092416 Firefox/3.0.3" -r -l 1 -nd -A .pdf -P pdf-analysis https://www.bing.com/search?q=site%3A$target+filetype%3Apdf

cd pdf-analysis
echo " "
echo -e "\e[00;33mArtist...\e[00m"
exiftool * | grep --color -E Artist
echo "============================="
echo -e "\e[00;33mSoftware...\e[00m"
exiftool * | grep --color -E Software
echo "============================= "
echo -e "\e[00;33mMake...\e[00m"
exiftool * | grep --color -E Make
echo "============================= "
echo -e "\e[00;33mAuthor...\e[00m"
exiftool * | grep --color -E Author
echo "============================="
echo -e "\e[00;33mCreator...\e[00m"
exiftool * | grep --color -E Creator
echo "============================="
echo -e "\e[00;33mProducer...\e[00m"
exiftool * | grep --color -E Producer
echo " "
cd -
echo " "

echo " "
echo -e "\e[01;34mSOCIAL MEDIA LINKS SEARCH\e[00m"
echo "Insert ENTER for start... "

echo " "
read start234

echo "Searching social links in the Website"



	echo "------------------------------------------"
echo " " 
sleep 1   		
echo -e "\e[00;41mSOCIAL NETWORK LINKS in the website: \e[00m"
echo " "
cat sm.txt | grep --color -E twitter
echo " "
cat sm.txt | grep --color -E plus.google.com
echo " "
cat sm.txt | grep --color -E facebook
echo " "
cat sm.txt | grep --color -E linkedin
echo " "
cat sm.txt | grep --color -E pinterest
echo " "
cat sm.txt | grep --color -E instagram
echo " "
cat sm.txt | grep --color -E youtube


echo " "
echo -e "\e[01;32mSearching \e[01;31mInstagram \e[01;32mhashtags related\e[00m"
echo " "
links2 -http.fake-user-agent "Mozilla/5.0 (X11; FreeBSD amd64; rv:26.0) Gecko/20100101 Firefox/26.0" -dump lakako.com/searchtag/"$target" > lak.txt
echo " "
cat lak.txt | grep --color -E "#"
echo " "
rm lak.txt

echo " "
echo -e "\e[01;32mSearching \e[01;34mGoogle plus \e[01;32m related links\e[00m"
echo " "

links2 -http.fake-user-agent "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.3) Gecko/2008092416 Firefox/3.0.3" -dump lakako.com/googleplus/search/"$target" > gpli.txt
echo " "
cat gpli.txt | grep -E https://
rm gpli.txt
echo " "

echo " "
echo -e "\e[01;34mSearch associated twitter hastags\e[00m"
echo " "

links2 -dump https://twitter.com/search?q=$target > twih.txt
echo " "
grep -Eio "#[a-zA-Z0-9./:-]+" twih.txt > dhash.txt
cat dhash.txt
rm twih.txt && rm dhash.txt

sleep 0.3

echo " "

echo -e "$target \e[00;31mSearch\e[00m in \e[00;34mFACEBOOK\e[00m \e[01;33mwith custom words of interest\e[00m"
echo -e "\e[01:32mEX: \e[00;36mEvent (\e[00;31mfor pretext)\e[00m"
echo -e "\e[01;32mPlease insert 3 words of interest: \e[00m"
echo "--- 1: "
read int1
echo "--- 2: "
read int2
echo "--- 3: "
read int3
echo " "
sleep 2
echo -e "\e[01;33mSearching with google dork\eè00m..."
echo " "
sleep 2
links2 -http.fake-user-agent "Mozilla/5.0 (X11; FreeBSD amd64; rv:26.0) Gecko/20100101 Firefox/26.0" -ssl.certificates 0 -dump google.es/search?q=site:facebook.com+"$target"+AND+"$int1"+OR+"$int2"+OR+"$int3" > sfa.txt

cat sfa.txt | grep --color -e http
cat sfa.txt | grep --color -e www.
rm sfa.txt

echo " "
echo -e "Some Linkedin people links \e[00;31massociated\e[00m with organization target"
sleep 2

links2 -dump google.com/search?q=site:linkedin.com+"$target" > la.txt

cat la.txt | grep --color -e http
cat la.txt | grep --color -e www.
rm la.txt
echo " "


echo -e "\e[00;31mSearch database and log files...\e[00m"
echo "Insert ENTER for start..."
read in23

sleep 0.5
links2 -http.fake-user-agent "Mozilla/5.0 (X11; FreeBSD amd64; rv:26.0) Gecko/20100101 Firefox/26.0" -ssl.certificates 0 -dump https://www.google.de/search?q=$target+filetype%3Alog+|+filetype%3Adat > datlog.txt
sleep 0.2
cat datlog.txt | grep --color -e http
cat datlog.txt | grep --color -e www.
rm datlog.txt
echo " "


echo -e "\e[01:42m                    \e[00m"
echo " "
echo "Ok... hoping google it's not blocking... now will start a default password search"
echo "\e[00;41                        \e[00m"
echo " "
sleep 2

links2 -http.fake-user-agent "Mozilla/5.0 (X11; FreeBSD amd64; rv:26.0) Gecko/20100101 Firefox/26.0" -ssl.certificates 0 -dump google.it/search?q=site:"$target"+"default password"+filetype%3Atxt+|+filetype%3Axls+OR+filetype:doc+|+"default password" > dfp.txt

cat dfp.txt | grep --color -e http
cat dfp.txt | grep --color -e www.
rm dfp.txt



rm fs.html
rm sm.txt
echo -e "\e[00;32m ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\e[00m"
echo -e "\e[01;33mAll done\e[00m"
echo -e "\e[00;33m------------------END-------------------\e[00m"
