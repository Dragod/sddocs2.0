# Getting started
> New Machine: Installing required software


## Git

Download and install the latest [GIT client](https://git-scm.com/downloads), this is our version control tool.

### Add new ssh key 

In order to be able to clone any repository, you need to setup a SSH key on youre Machine:

1. Run git bash
2. Run the commnand: ```eval "$(ssh-agent -s)"``` in the command line to enable ssh (Windows machine, sometimes you don't need to run this command, just go to next step)
3. Run the command: ```ssh-keygen -t rsa -b 4096 -C "your_email@example.com"```, a ssh key will be crated
4. Now search for the folder: c\user\whatevername\.ssh and find the file id_rsa.pub
5. Open that file with Word Pad and copy the content.
6. Open https://gitlab.screendragon.net/profile/keys
7. Add a new key with a new title
8. Copy the content
9. Save

## Ruby

Download and install the latest [Ruby installer](https://rubyinstaller.org/downloads/), we still need that to run sass for now. We may change to Node in the near future.

PS: remember to add global variable while using ruby installer, very important on windows machine to check the checkbox in the installer.

### Windows SSH issue

> [https://github.com/rubygems/rubygems/issues/1736](https://github.com/rubygems/rubygems/issues/1736)

Quick reference, just in case it will be removed from the web:

I noticed this problem with a fresh installation on windows using the ruby-installer.
Another (imho better workaround) is to replace the https source temporary, run gem update --system and then switch back to https.

1. ```gem sources --remove https://rubygems.org/```
2. ```gem sources --add http://rubygems.org```
3. ```gem update --system```
4. ```gem sources --remove http://rubygems.org```
5. ```gem sources --add https://rubygems.org```

This worked fine for me on last 2 msi laptop.

### Ruby gems

Open a ruby command line and run:

1. ```gem install sass```
2. ```gem install zurb-foundation```
3. ```gem install compass```
4. ```gem install breakpoint```

## Node js

Download and install the reccomended version of [node.js](https://nodejs.org/en/). Node is running all the grunt task, bower and other utility we use in most project.

If the project you working on does require any of the above mentioned pakage, run:

1. npm install && bower install (this will install all the package necessary if you already have a package.json & bower.json file in the project root)

> If you need any npm pakage that isn't in the json file, just run: npm install 'package-name'. An example below with bless-css pakage.

### Bless css for IE9 (deprecated)

1. Run: ```npm install -g bless@3.0.3```
2. Go to the folder where the actual css is, like: C:\sddev\vs2008\c3v4\c3v4\sass
3. Run: blessc formbuilder.css formbuilder_split.css

> Note: Do not install v4 of bless, at the moment does have plenty of bugs. Probably worth a try now as v4 is out frorm some time now (03/01/2017)

### NPM options

NPM does have some options when installing package, I will cover the very basic:

1. ```npm install -g 'pakage-name'``` (the -g flag stand for global so the pakage will be installed as global)
2. ```npm install -g 'pakage-name@3.0.0``` (the flag @ allow us to install a very specific version of the pakage)

> [NPM flags and other options - article](https://docs.npmjs.com/cli/install)


## Visual Studio Express

Download and install [Visual studio Express](https://www.visualstudio.com/vs/visual-studio-express/)

### Run a project

1. From the menu select: FILE >>> Open Project, then load the proper file with the .sln extension.
2. Start the project clicking on the RUN button on the top bar.

### Dependencies

Sometimes project do require additional dependencies such as DLL. If you get an error while trying to build a solution this may be your problem.
To solve this you can use the Pakage Manager inside visual studio.

How to handle this:

1. The Package Manager Console in Visual Studio lets you use NuGet PowerShell commands to find, install, uninstall, and update NuGet packages. Using the Console is necessary if you want to work with packages without having a solution open, and is required in cases where the Package Manager UI does not provide a way to perform an operation. Note, however, that all operations can be done with the NuGet CLI. In all cases, you open the Console in Visual Studio through the Tools > NuGet Package Manager > Package Manager Console command.
2. Usually the error reported during the build does tell you what package is missing. Search the package from [nuget website](https://www.nuget.org/packages)
3. Open the pakage manager console and type in the package you want to download. Example: Install-Package DocumentFormat.OpenXml 
4. Press ENTER, and it will download it for you.
5. Once it's done, repeat this until you got all the dependencies fixed.
6. Start your solution again, you should be able to run it now.

## VPN

> Download the software [OpenVpn](https://openvpn.net/index.php/open-source/downloads.html), install and ask for a certificate to Rosie. Once you have the program installed an icon should appear pn the tray bar (bottom right of the screen). Right click it and choose ```import file``` witch is your certificate. Connect to the VPN.

# Basic GIT command

1. ```git init [project name]``` (Creates a new local repository with the specified name)
2. ```git clone [url]``` (Downloads a project and its entire version history)
3. ```git add [file]``` (Snapshots the file in preparation for versioning), comm use is: git add -A, to add all modified files
4. ```git commit -m "[descriptive message]"``` (Records file snapshots permanently in version history)
5. ```git feth``` (fetch to update your remote-tracking branches under refs/remotes/remote/)
6. ```git pull``` (Download and incorporate changes)
7. ```git push``` (Uploads all local branch commits to GitHub/GitLab or whatever you are using)
8. ```git branch``` (Lists all local branches in the current repository)
9. ```git checkout [branch-name]``` (Switches to the specified branch and updates the working directory)
10. ```git gc``` (Runs a number of housekeeping tasks within the current repository, such as compressing file revisions to reduce disk space and increase performance and removing unreachable objects which may have been created from prior invocations of git add.)

> [Git cheat-sheet](https://services.github.com/on-demand/downloads/github-git-cheat-sheet.pdf)

# Code Editors

## Sublime Text

Download [Sublime text 3](https://www.sublimetext.com/3)

### Shortcuts

ctrl + alt + uparrow/downarrow - create a new editable point above/below cursor

ctrl + d - with selection - select next instance of a selection and create a new edit point

ctrl + shift + d - duplicate current line or selection 

shift + ctrl  + uparrow/downarrow - move current line up/down

alt + shift + w wrap selection in a tag

ctrl + j - concatenate lines

ctrl + shift + m - select to brackets

ctrl + shift + j - select to indentation

ctrl + / - comment/uncomment

ctrl + r - search through classes / elements

## Visual studio code

Download [Visual studio code](https://code.visualstudio.com/)

### Shortcuts

[Show PDF](https://code.visualstudio.com/shortcuts/keyboard-shortcuts-windows.pdf)

### Running IIS in Visual studio code

> Requirements: Windows Machine (Sorry not for Linux & OSX), IIS Express installed

Download and intall: [IIS Express](https://marketplace.visualstudio.com/items?itemName=warren-buckley.iis-express)

After installing the package you need to change the port number. 
Port number setting can be set in .vscode/iisexpress.json if you wish to override random port number.
You need the following file added ```.vscode/iisexpress.json``` and then you can set the port setting like so:

```json
{
    "port": 49797
}
```
An example of a json config:

```json
{
  "port": 49797,
  "path": "c:\\gitrepos\\sd-unity",
  "clr": "v4.0",
  "protocol": "http"
}
```

Keyboard shortcuts: 

Start site (Ctrl+F5)

Stop site (Shift+F5) 

Restart site (Ctrl+Shift+F5)

## Add json mime type to the IIS Express

Open up a console, and the navigate to: ``cd "c:\Program files\IIS Express\"``. Then type ``appcmd.exe``. 
Now you can add json mime type with the command below:

```bat
appcmd set config /section:staticContent /+[fileExtension='.json',mimeType='text/j
son']
```
## Show file list locally on IIS Express

Open up a console, and the navigate to: ``cd "c:\Program files\IIS Express\"``. Then type ``appcmd.exe``. 
Now you can show the file list with the command below:

```bat
appcmd set config /section:system.webServer/directoryBrowse /enabled:true
```

