# General Tools

## Improved basic commands

- Add progress bar to "mv"/"cp":

```bash
sudo apt install pv
mv -v sourcedir targetdir | pv -l -s filecount > logfile
rsync --progress sourcedir targetdir
```

- Analyze and display disk usage from terminal [DUC](https://duc.zevv.nl/):

```bash
sudo apt install duc
duc index folder
duc gui folder
```
