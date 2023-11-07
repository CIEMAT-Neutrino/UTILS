# Introduction to LArSoft

Check out the [LArSoft training information](https://dune.github.io/computing-training-basics/setup.html).

1. Build `LArSoft` from a `dunebuild`: 
```bash
sh build_larsoft.sh
```

Hopefully you will get an output similar to 

```bash
------------------------------------
INFO: stage install SUCCESS for MRB project larsoft 
------------------------------------
```

and then you can start using `LArSoft` 😊



2. From a `dunegpvm` run:
```bash
cd larsoft
source config.sh
```
With output:
```bash
You can check that everything is working by running `lar` and you should get an output similar to:
Setting up larsoft UPS area... /cvmfs/larsoft.opensciencegrid.org
Setting up DUNE UPS area... /cvmfs/dune.opensciencegrid.org/products/dune/

MRB_PROJECT=larsoft
MRB_PROJECT_VERSION=
MRB_QUALS=e20:prof
MRB_TOP=/.../larsoft
MRB_SOURCE=/.../larsoft/srcs
MRB_BUILDDIR=/.../larsoft/build_slf7.x86_64
MRB_INSTALL=/.../larsoft/localProducts_larsoft__e20_prof

PRODUCTS=/.../larsoft/localProducts_larsoft__e20_prof:/cvmfs/dune.opensciencegrid.org/products/dune:/cvmfs/larsoft.opensciencegrid.org/products:/cvmfs/larsoft.opensciencegrid.org/packages:/cvmfs/fermilab.opensciencegrid.org/products/common/db/
CETPKG_INSTALL=/.../larsoft/localProducts_larsoft__e20_prof

local product directory is /.../larsoft/localProducts_larsoft__e20_prof
----------- this block should be empty ------------------
---------------------------------------------------------
```

If you are running your **analysis** you need to run `mrbsetenv` that may give some warnings as output but it is fine as long as it does not give an error. You can check that everything is working by running `lar` and you should get an output similar to:
```bash
OptionsHandler caught a cet::exception calling art::BasicOptionsHandler::doCheckOptions()
---- Configuration BEGIN
  No configuration file given.
---- Configuration END

Art has completed and will exit with status 89.
```

3. You may need to access some files stored in `/pnfs/`
```bash
cd  work
setup_fnal_security #RUN (to get access)
ifdh cp - D /pnfs/.../file.root .
```

4. You may want not to copy the files but access them directly from `/pnfs/`, in that case you need to run:
```bash 
pnfs2xrootd /pnfs/.../file.root
```
And it would return a path like: `root://fndca1.fnal.gov:1094/pnfs/fnal.gov/usr/.../file.root` that you can use to access the file.


5. To inspect the files and check the labels you are interested on:
```bash
lar -c eventdump.fcl -s file.root -n 1
```


6. If you change some file in `larsoft` you need to run:
```bash
make install -j16 #INSIDE THE BUILD DIRECTORY YOU CHANGED
```

# DUNE Data

Check [DUNE MCC11 Projects](https://dune-data.fnal.gov/mc/mcc11/index.html)  to see the samples generated in MCC11.

#  Git in DUNE machines

You need to run the following commands to get the git working in the DUNE machines:
```bash
ssh-keygen
[OUT] Enter file in which to save the key: /nashome/U/USER/.ssh/github
[OUT] Enter passphrase (empty for no passphrase): (enter) 
[OUT] Enter same passphrase again: (enter)
cat ~/.ssh/github.pub
[OUT] ssh-rsa *** USER@wc.fnal.gov
```
This key need to be added in GitHub `Settings account/SSH Keys + Add ssh key`

Then you need to run the following each time you log in (add in `.bash_profile` for automatically running):
```bash
eval $(ssh-agent -s)
ssh-add ~/.ssh/github
```

To copy from local system to dune machines:
```bash
scp "files" USER@PC.fnal.gov:/path/...
```

To mount a folder from dune machine into a local (empty) folder:
```bash
sshfs USER@dunegpvmXY.FNAL.GOV:/dune/app/users/USER/larsoft/work ../data
```