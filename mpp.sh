#!/bin/bash



if test -z "$1"
then
        echo 
        echo mpp - make python program : creates a hello world program
        echo
        echo Please enter the name of the program you want to create as the first argument in the command line and try again
else
        file=$1
        extention=".py"
        if [[ ${file: -3} !=  $extention ]]; then
            file=$file$extention
        fi

        echo Creating file: $file

        if [  -f $file ]; then
            echo Sorry, file $file already exists!
            exit
        fi

        DATE=`date +"%A, %B %d %Y"`
        
        touch $file
        echo  \#\!/usr/bin/python >> $file         
        echo  >> $file
        echo \# author: john pazarzis >> $file
        echo \# Creation Date: $DATE >> $file
        echo  >> $file
        echo  >> $file
        echo if __name__ == '__main':>> $file         
        chmod +x $file
        echo done


fi
