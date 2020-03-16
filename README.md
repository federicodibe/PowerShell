# PowerShell Scripts

Utility scripts for Windows 10 PowerShell


### Installation

PS scripts inside FileOperation folder requires Windows 10, PowerShell and admin/root rights.

Install the dependencies and devDependencies and start the server.


### Plugins

FileOperation is currently extended with the following plugins. 
| Plugin | Description |
| ------ | ------ |
| handle/handle.exe (or handle64.exe) | Handle è un utility che permette di ottenere la lista di processi che bloccano un file |


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
PS > .\checkIfLocked.ps1 'C:\Users\Federico\test.dat'
```


### Author

See [Federico Di Bernardo](https://www.linkedin.com/in/federico-di-bernardo-373ba7a9)


### License

MIT

**Free Software, Hell Yeah!**
