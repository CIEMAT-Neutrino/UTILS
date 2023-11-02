# UTILS
Useful Tools for Informatics and Lab Software

## CONTENTS

* condor --> how to use and run in CERN condor
* plots --> plotting tips 

## GENERAL TIPS

* Mounting/umounting a /pnfs/ folder in your local computer#
    ```bash
    sshfs USER@pcaeXYZ.ciemat.es:/pnfs/ciemat.es/data/neutrinos/SBND_XA_PDE ../data
    sshfs pcaeXYZ:/pc/choozdsk01/palomare/CYTHON/ data
    sudo umount ../data
    # If sudo not available, use fusermount
    fusermount -u data/
    ```

* Setup root environment
    ```bash
    source /cvmfs/sft.cern.ch/lcg/app/releases/ROOT/6.24.08/x86_64-centos7-gcc48-opt/bin/thisroot.sh 
    ```

* Changing permissions on files#
    ```bash
    sudo sshfs -o allow_other USER@pcaeXYZ.ciemat.es:/pnfs/ciemat.es/data/neutrinos/SBND_XA_PDE ../data
    chmod o=rwx */*.npz
    chmod -R ugo=+rwx folder #POWERFUL --> set all files/folders to be available for everyone!
    ```

* Transform the npx files to another format#
    ```bash
    import numpy as np
    data = np.load(filename)
    for key, value in data.items(): np.savetxt("somepath" + key + ".csv", value)
    ```

* Optionally update your requirements.txt file
    ```bash
    pip freeze > requirements.txt
    ```
* Deactivate virtual environment
    ```bash
    deactivate
    ```
* Remove the old virtual environment folder: macOS and Linux
    ```bash
    rm -rf venv
    ```
* Remove the old virtual environment folder: Windows
    ```bash
    rd /s /q "venv"
    ```
* Specify correct Python version when creating virtual environment
    ```bash
    python -m venv venv
    ```
* Activate on Unix or MacOS
    ```bash
    source venv/bin/activate
    ```
* Activate on Windows (cmd.exe)
    ```bash
    venv\Scripts\activate.bat
    ```
* Activate on Windows (PowerShell)
    ```bash
    venv\Scripts\Activate.ps1
    ```
* Install the modules in your requirements.txt file (optional)
    ```bash
    pip install -r requirements.txt
    ```