# FIRST STEPS
* You need an `afs` account to access `CIEMAT` computers. Contact `ae-support.ciemat.es` indicating an email not necesarily from `ciemat.es` and they will create an account for you.

* Radiological Protection Course: needed to access IR02 laboratory. Contact Juanjo `jj.martinez@ciemat.es` indicating name, surname and ID number. Once you make the online course you need to contact Pedro Rato that will give you the access to the laboratory after an explanation. We will need to update the access at building 12.

* Remote conection: you can connect to `pcae22` from port `622` [`afs` password].
```bash
ssh -XY -D 9090 -p622 AFS_USER@pcae22.ciemat.es
ssh AFS_USER@pcaeXYZ.ciemat.es  # Our computer
exit
```
We can configure the browser to use the proxy: SOCKS Host: 127.0.0.1; Port: 9090 y SOCKS v5.

* From any CIEMAT computer you have access to **CVMFS (Cern Vitual Machine-File System)** where you have access to all the software you need. You can check your _shell+architecture_ with `echo $SHELL $HOSTTYPE`. `pcae` computers use to be `x86_64 + CentOS Linux release 7.9.2009`. To use an specific version you need to run:
```bash
source /cvmfs/sft.cern.ch/lcg/app/releases/ROOT/6.18.04/x86_64-centos7-gcc48-opt/bin/thisroot.sh
```
* `.bashrc`: configuration to be loaded when you open a new terminal. See an example in `ciemat/bashrc_example` and copy it to your home directory as `.bashrc` (do not forget to change your user name when needed). 
* **LAB DATA**: you will find data in 
    - `/pnfs/ciemat.es/data/neutrinos/FOLDER`: usually compressed data
    - `/pc/choozdsk01/palomare/SCINT/` or `/pc/choozdsk01/palomare/GEANT4/`: uncompressed data used for the analysis.

* **ACCOUNTS**:
    - ORCID
    - CERN
    - FERMILAB: [Complete the Access Request form](https://fermi.servicenowservices.com/expert_shell.do?sysparm_sys_id=63f9f6a8dbd148104e65ff621f961975)