#!/bin/sh
# open two tabs for comfortable developpement "make sure you put correct terminal name - from terminal click 'about under help to get info' "

echo "Author: @bdou"
echo -n "Enter Project name: " 
read projectName
echo "Creating ....🤫😆 "
echo "Meditate ... while we working 🧘‍♂️"
composer create-project symfony/skeleton $projectName
cd  `pwd`"/$projectName"
composer require web-server && composer require twig && composer require maker && composer require var-dumper && composer require annotations
echo " hey you're done, congrats 👍 🏅 "

echo -n "do you want to launch project: y or n " 
read launch
if [ "$launch" = "y" ];
    then
        echo "for convient developpement, two extra tabs will open yes 👏!!! 🏋️‍♂️ Enjoy 🚦  "
        xfce4-terminal --tab --tab
        php bin/console serve:run 
    else
        return 
fi