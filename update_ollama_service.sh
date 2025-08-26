#!/usr/bin/bash

my_check=$(grep "0.0.0.0" /etc/systemd/system/ollama.service)

if [ -z "$my_check" ]
then
        echo "Ollama-Host not set"
        sudo sed -i 's/\[Service\]/\[Service\]\nEnvironment="OLLAMA_HOST=0.0.0.0"/g' /etc/systemd/system/ollama.service
        echo "Ollama-Host is set"
        systemctl daemon-reload
        systemctl restart ollama.service
        echo "SystemCTL reloaded"
else
        echo "Ollama-Host already set"
fi
