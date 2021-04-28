#This auto update script is incredibly easy to implement and I now use it for all my gitbhub projects, 
#All you have to do is create a version.txt file, inside of it put a version (ex: 1.0)
#Upload the version.txt file where you wish(github works fine, the point is just so that it can be downloaded from a link) 
#Now, get the download link of your version.txt file,
#Change all "https://link-to-version.txt-file" instances in this function to the link of your version.txt file
#Now get the link where your script will be uploaded, (you dont want to upload the script yet) 
#Replace "https://link-to-raw-script-file" with the download link to the script.
#Change all instances of /usr/bin/scriptname/ to use your script name instead, (example: /usr/bin/autoupdate) (this step is optional as this just designates the folder name that your script is stored in) 
#Now, Paste this function at the top of your script, and test it out. 
#To release an update, just change the version inside of version.txt, the script tests this file every time it runs and if it finds the local downloaded file is different from the web file then it will update the script.
#Thats it! enjoy.

#Auto Update#
##Function 3##
version=$(curl -s https://link-to-version.txt-file
versionCurrent="$(cat /usr/bin/scriptname/version.txt)"
clear
if [ "$versionCurrent" = "$version" ]; then
echo Script up to date
else
sudo mkdir -p /usr/bin/scriptname
sudo -s curl https://link-to-version.txt-file -o /usr/bin/discord0host/version.txt > /dev/null
sudo -s curl -L https://link-to-raw-script-file -o "$0" > /dev/null
clear
sudo bash "$0"
fi