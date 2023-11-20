# General tips

## Troubleshooting

```bash 
ps aux  |  grep -i vscode  |  awk '{print $2}'  |  xargs kill -9
rm -rf $HOME/.vscode-server
```
