# General Tools

## Improved basic commands

- Add progress bar to "mv":

```bash
sudo apt install pv
mv -v sourcedir targetdir | pv -l -s filecount > logfile
```
