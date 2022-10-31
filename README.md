# Public Resume Hosting

We will be publically hosting a Resume written in markdown. To do this there are several things we must install and setup beforehand.

## Getting started

- This walkthrough is intended for Windows, the process of setting up on other operating systems may vary.
- Start with a blank folder, which will hold all our necessary files in order to host the Resume.

### Prerequisites

- The latest version of [Ruby](https://rubyinstaller.org/downloads/).
- An editor capable of editing markdown, such as [Visual Studio Code](https://code.visualstudio.com/).
- A valid [Github](https://github.com/) account.

### Installing

Open a command prompt, press **Windows Key+R** type "**cmd.exe**" then hit enter, and type the following:

    gem install jekyll bundler

This will install Jekyll. We then type the following on a **new** command prompt to verify Jekyll installed correctly:

    jekyll -v

***NOTE: Once Jekyll is installed, the command prompt must be closed and re-opened in order to use Jekyll.***

## Setup

- Create a new text document in your blank folder. Rename this from "**New Text Document.txt**" to "**start.bat**".

Copy and paste the following code into "**start.bat**":

    if exist index.md goto host
    jekyll new ./ --blank
    :host
    jekyll serve --host 0.0.0.0 --port 8080

- Run "**start.bat**" contained in the folder, and allow access to the *Windows Firewall* pop-up. This will generate and host a blank website.

### Adding the Resume

- Replace "**index.md**" with your Resume, maintaining the file name "**index.md**".

## Public Hosting

We are going to use Github pages to publicly host the Resume.

### Uploading to Github

In order to get our files on Github we must:

- Create a new public repository, giving it your desired name and description. Check the "*Add a README file*" box, under "*Initialize this repository with*".
- Access your newly created repository and select "*Add file*" then "*Upload files*" and drag your folder contents into the dropbox and upload.

## Authors and Acknowledgements

- Author: Tristan Dyck

## FAQ

- ***Q:*** Hi
    - ***A:*** Hi
- ***Q:*** Hello
    - ***A:*** Hello
