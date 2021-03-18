#!/bin/bash
#This line specifies what interpreter you want to use on the shell script
#Samuel Martinez
#Hashtags make text non exacutable to make in just text
#SED

echo Please enter file name #This prints to the screen

read fileName #This reads user input and saves it as filename so I can reference it in the script

echo Please select what you would like to do to your file
echo a. Insert above the first line the title  - Looney Tunes -.
echo b. Remove the duplicate lines
echo c. Print the contents of the file with the first name then the phone number.
echo d. Append at the end of the file "That's all Folks!"

read select

if [ $select == 'a' ]
        then
        sed '1i-Looney Tunes-' $fileName
elif [ $select == 'b' ]
        then
        sort | uniq $filename
elif [ $select == 'c' ]
        then
        sed -n -e 's#\s[a-zA-Z]*##g' -e 's#[0-9]*,[0-9]*##g' -e 's#[0-9]*/[0-9]*/[0-9]*:[0-9]*##gp' $fileName
else
        sed '$aThats all Folks' $fileName
fi
