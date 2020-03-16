# PowerShell Scripts

Utility scripts for Windows 10 PowerShell


### Requirement

Windows 10, PowerShell and admin/root rights.


### Plugins

Those scripts are currently extended with the following plugins. 
| Plugin | Description |
| ------ | ------ |
| handle/handle.exe (or handle64.exe) | Handle is a tool that allows you to obtain the list of processes that block files |


### How to use

Follow this step:
```sh
1. Download repo and extract content
2. Open PowerShell with Administrator rights
3. Go to [PATH]\PowerShell-master\FileOperation
```

##### Unlock
Use this script for unlock file:
```sh
PS > .\unlockFile.ps1 'filename'
```
Example:
```sh
PS > .\unlockFile.ps1 'C:\Users\Federico\test.dat'
```

##### Check if locked
Use this script for check if a file is locked:
```sh
PS > .\checkIfLocked.ps1 'filename'
```
Example
```sh
PS > .\checkIfLocked.ps1 'C:\Users\Federico\test.dat'
```


### Author

See [Federico Di Bernardo](https://www.linkedin.com/in/federico-di-bernardo-373ba7a9)


### License

MIT

**Free Software, Hell Yeah!**
