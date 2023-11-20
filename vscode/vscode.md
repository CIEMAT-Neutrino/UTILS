# General tips

## Troubleshooting

```bash 
ps aux  |  grep -i vscode  |  awk '{print $2}'  |  xargs kill -9
rm -rf $HOME/.vscode-server
```
## SSH configuration to apptainer containers
In the `.ssh/config` file you need to add:
```bash
Host scint_container~*
  RemoteCommand apptainer shell /pc/choozdsk01/palomare/images/scint_v0.0.sif
  RequestTTY yes
  ProxyJump gaeuidc1.ciemat.es

Host localhost scint_container~localhost
  HostName gaeuidc1.ciemat.es
  User AFSUSER

Host gaeuidc1.ciemat.es
  HostName gaeuidc1.ciemat.es
  Port 22
  User AFSUSER
  ProxyJump pcae22.ciemat.es
```
Next, Open VS Code and press Ctrl+Shift+P to bring up the interactive menu and type Open Settings (JSON). Select the result that matches (hint: likely 1st). Make the settings.json file include something like the following.
```bash
    {
    "remote.SSH.serverInstallPath": 
    {
        "argos_container~localhost": "~/.vscode-container/argos_container"
    },
    "remote.SSH.enableRemoteCommand": true,
    "remote.SSH.useLocalServer": true
    }
```
For the `scint_v0.0.sif` image you can work directly on the repositories by runbning `cd /home/` or open this folder with `File` options. 