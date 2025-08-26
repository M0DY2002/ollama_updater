#!/usr/bin/bash

# originale Idee
#curl -s 'https://github.com/ollama/ollama/' | grep ";\">v" | grep "</span>" | awk '{print $7}' | sed 's/none;\">v//g' | sed 's/<\/span>//g'

VERSION_GIT=$(curl -s 'https://github.com/ollama/ollama/' | grep ';\">v' | grep '</span>' | awk '{print $7}'  | sed 's/none;\">v//g' | sed 's/<\/span>//g')
#echo $VERSION_GIT

VERSION_PC=$(/usr/local/bin/ollama -v | awk '{print $4}')
#echo $VERSION_PC
#VERSION_PC='TEST'

if [ $VERSION_GIT == $VERSION_PC ]
then
	echo "Ollama v$VERSION_PC okay"
else
	echo "Ollama v$VERSION_PC needs update v$VERSION_GIT"
	curl -fsSL https://ollama.com/install.sh | sh
fi
