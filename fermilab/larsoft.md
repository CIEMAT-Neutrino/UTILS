# Introduction to LArSoft

Check out the [LArSoft training information](https://dune.github.io/computing-training-basics/setup.html).

1. Build LArSoft from a `dunebuild`: 
```bash
sh build_larsoft.sh
```


2. From a `dunegpvm` run:
```bash
cd larsoft
source config.sh
mrbsetenv # DO NOT RUN FOR SIMULATE ONLY FOR ANALYSIS
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