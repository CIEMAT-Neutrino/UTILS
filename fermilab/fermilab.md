Once you have your _Kerberos_ account you can connect to FermiLab computers. For that you will need a [configuration file](https://fermi.servicenowservices.com/kb_view.do?sysparm_article=KB0011315). This already exists at CIEMAT computers. Then follow the next steps:

1. Create a 24h ticket:  `kinit -f USER@FNAL.GOV`
2. Connect to the computer: `ssh USER@dunegpvmXY.fnal.gov` o `ssh USER@dunebuildWZ.fnal.gov`
3. You may find interesting to configure a [desktop virtual VNC](https://sbnsoftware.github.io/sbndcode_wiki/Viewing_events_remotely_with_VNC.html) to see the graphics. Otherwise we recommed **VSCode**.

We need to have in the local configuration:
```bash
Host dunegpvmXY.fnal.gov
Hostname dunegpvmXY.fnal.gov
User USER
ForwardAgent yes
ForwardX11 yes
ForwardX11Trusted yes
GSSAPIAuthentication yes
GSSAPIDelegateCredentials yes
LocalForward 5901 localhost:59XY #introduce a number
Host *.fnal.gov
ForwardAgent yes
ForwardX11 yes
ForwardX11Trusted yes
GSSAPIAuthentication yes
GSSAPIDelegateCredentials yes
```