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
echo -e "Corporate espionage tool for testing privacy and security\e[00m"
echo -e "\e[01;34m________________________________________________________________________________\e[00m"
echo " "
echo -e "CODENAME: \e[01;43mINVICTUS MANEO v0.5\e[00m -- \e[00;31m Coded for privacy testing - The author decline any responsability for 
any illegal use of this tool\e[00m"
echo " "
bar
echo -e "\e[01;34mcoded by Cignoraptor\e[00m --- contact for advanced versions or suggestions > \e[00;34mroot4sec6per3@openmailbox.org\e[00m"
echo " "
echo "TARGET DOMAIN ... Example: domain.org"
read target

cd moduli >> /dev/null
echo "$target" > ricorda.txt
targ=$(cat ricorda.txt)
echo $targ > dap.txt
sleep 0.2
sed 's/\..*$//' dap.txt > clean.txt
rm dap.txt

echo " "
PS3="Choose an option:"

select opt in "WHOIS AND IP INFORMATION" "HOSTILITY-HATERS ANALYSIS" "EMAIL DISCOVERY" "IMAGES DISCOVERY AND ANALYSIS" "DOCUMENTS DISCOVERY AND ANALYSIS" "SOCIAL MEDIA TRACKING" "SENSITIVE FILES SEARCH" "SOCIAL ENGINEERING TEST" "RESTART"
do
    case "$opt" in
        'WHOIS AND IP INFORMATION')
bash whoiseip.sh
     ;;
     'HOSTILITY-HATERS ANALYSIS')
bash hostility.sh
          ;;
          'EMAIL DISCOVERY')
          bash emspi.sh
          ;;
          'IMAGES DISCOVERY AND ANALYSIS')
          bash pmeta.sh
          ;;
          'DOCUMENTS DISCOVERY AND ANALYSIS')
          bash dmeta.sh
          ;;
          'SOCIAL MEDIA TRACKING')
          bash st.sh
          ;;
          'SENSITIVE FILES SEARCH')
          bash fise.sh
          ;;
          'SOCIAL ENGINEERING TEST')
          bash sociale.sh
          
          ;;
          'RESTART')
          rm ricorda.txt && rm clean.txt
          cd - >> /dev/null
          bash cignotrack.sh
          break;
          esac
          done
cd - >> /dev/null

