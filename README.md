# PowerShell Scripts

[![N|Solid](https://cldup.com/dTxpPi9lDf.thumb.png)](https://nodesource.com/products/nsolid)

[![Build Status](https://travis-ci.org/joemccann/dillinger.svg?branch=master)](https://travis-ci.org/joemccann/dillinger)

Utility scripts for Windows 10 PowerShell

### Installation

PS scripts inside FileOperation folder requires Windows 10, PowerShell and admin/root rights.

Install the dependencies and devDependencies and start the server.

### Plugins

FileOperation is currently extended with the following plugins. 
| Plugin | Description |
| ------ | ------ |
| handle/handle.exe (or handle64.exe) | Handle è un utility che permette di ottenere la lista di processi che bloccano un file |

### Plugins

How to use:
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

For production environments...

```sh
$ npm install --production
$ NODE_ENV=production node app
```

### Plugins

Dillinger is currently extended with the following plugins. Instructions on how to use them in your own application are linked below.

| Plugin | README |
| ------ | ------ |
| Dropbox | [plugins/dropbox/README.md][PlDb] |
| GitHub | [plugins/github/README.md][PlGh] |
| Google Drive | [plugins/googledrive/README.md][PlGd] |
| OneDrive | [plugins/onedrive/README.md][PlOd] |
| Medium | [plugins/medium/README.md][PlMe] |
| Google Analytics | [plugins/googleanalytics/README.md][PlGa] |


### Development

Want to contribute? Great!

Dillinger uses Gulp + Webpack for fast developing.
Make a change in your file and instantaneously see your updates!

Open your favorite Terminal and run these commands.

First Tab:
```sh
$ node app
```

Second Tab:
```sh
$ gulp watch
```

(optional) Third:
```sh
$ karma test
```
#### Building for source
For production release:
```sh
$ gulp build --prod
```
Generating pre-built zip archives for distribution:
```sh
$ gulp build dist --prod
```
### Docker
Dillinger is very easy to install and deploy in a Docker container.

By default, the Docker will expose port 8080, so change this within the Dockerfile if necessary. When ready, simply use the Dockerfile to build the image.

```sh
cd dillinger
docker build -t joemccann/dillinger:${package.json.version} .
```
This will create the dillinger image and pull in the necessary dependencies. Be sure to swap out `${package.json.version}` with the actual version of Dillinger.

Once done, run the Docker image and map the port to whatever you wish on your host. In this example, we simply map port 8000 of the host to port 8080 of the Docker (or whatever port was exposed in the Dockerfile):

```sh
docker run -d -p 8000:8080 --restart="always" <youruser>/dillinger:${package.json.version}
```

Verify the deployment by navigating to your server address in your preferred browser.

```sh
127.0.0.1:8000
```

### Author

See [Federico Di Bernardo](https://www.linkedin.com/in/federico-di-bernardo-373ba7a9)

### License

MIT

**Free Software, Hell Yeah!**
