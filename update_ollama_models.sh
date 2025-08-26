#!/usr/bin/bash

#ollama list | awk '{print $1}'

myarr=($(ollama list | awk 'FNR>1{print $1}' | sort))

# Now access elements of an array (change "1" to whatever you want)
#echo ${myarr[1]}

# Or loop through every element in the array
for i in "${myarr[@]}"
do :
echo $i
ollama pull $i>/dev/null
echo .
done





#ollama pull wen2.5-coder:3b-instruct-q4_K_M
#ollama pull qwen2.5-coder:1.5b-instruct-q4_K_M
#ollama pull llama3.2:3b-instruct-q5_K_M
#ollama pull llama3.2:latest