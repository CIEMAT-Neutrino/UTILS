# General Tools

## Improved basic commands

- Add progress bar to "mv":

```bash
mv -v sourcedir targetdir | pv -l -s filecount > logfile
``
