# ollama_updater
updater for ollama cli-app, local service and models(?)

Use this in following order
1. ollama_updater_app.sh
   * gets latest version number from GIT and compares it to current local ollama installation
   * installs ollama via script ```curl -fsSL https://ollama.com/install.sh | sh```

3. ollama_updater_service.sh
   * adds `OLLAMA_HOST=0.0.0.0` to `/etc/systemd/system/ollama.service`

5. ollama_updater_models.sh
   * don't know, if necessary
   * just to be shure that all local models are downloaded correctly
