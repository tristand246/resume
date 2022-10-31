# Public Resume Website Hosting

We will be publically hosting a Resume written in markdown. There are great advantages to hosting a Resume website as opposed to storing and submitting a PDF. Websites can be updated almost instantaniously, whereas a PDF needs to be resubmitted and version control is harder to maintain, especially if you keep multiple versions saved at once. To do this, there are several things we must install and setup beforehand.

## Getting started

This walkthrough is intended for Windows, the process of setting up on other operating systems may vary.

- Create a new folder, this will hold all our necessary files in order to host the Resume.

### Prerequisites

- A [Windows](https://www.microsoft.com/en-ca/software-download/windows10) compatible system.
- The latest version of [Ruby](https://rubyinstaller.org/downloads/).
- An editor capable of editing markdown, such as [Visual Studio Code](https://code.visualstudio.com/).
- A valid [Github](https://github.com/) account.

### Installing

Open a command prompt, press **Windows Key+R** type "*cmd.exe*" then hit enter, and type the following:

    gem install jekyll bundler

This will install Jekyll. We then type the following on a **new** command prompt to verify Jekyll installed correctly:

    jekyll -v

***NOTE: Once Jekyll is installed, the command prompt must be closed and re-opened in order to use Jekyll.***

## Setup

- Create a new text document in your blank folder. Rename this from "*New Text Document.txt*" to "*start.bat*".

Copy and paste the following code into "*start.bat*":

    if exist index.md goto host
    jekyll new ./ --blank
    :host
    jekyll serve

- Run "*start.bat*" contained in the folder, and allow access to the *Windows Firewall* pop-up. This will generate and host a blank website.
- Type "*127.0.0.1:4000*" into your browser's address bar to preview your website.

### Adding the Resume

- Replace "*index.md*" with your Resume, maintaining the file name "*index.md*".

## Public Hosting

We are going to use Github pages to publicly host the Resume.

### Uploading to Github

In order to get our files on Github we must:

- Create a new public repository, giving it your desired name and description. Check the "*Add a README file*" box, under "*Initialize this repository with*".
- Access your newly created repository and select "*Add file*" then "*Upload files*" and drag your folder contents into the dropbox and upload.

### Hosting on Github Pages

- Click on "*Settings*" in your newly created repository.
- Click "*Pages*" on the options list to the left.
- Select the "*main*" branch and click save.

## Authors and Acknowledgements

- Author: Tristan Dyck

## FAQ

- ***Q:*** Can I use something else than Github Pages for hosting?
    - ***A:*** Yes, there are many ways to host a website. Including using your own domain name and self hosting, or using a different hosting service, such as [Codeberg Pages](https://codeberg.page/).
- ***Q:*** Can other people see my website on Jekyll?
    - ***A:*** Not if you hosted it with the method shown in this readme. It is possible to allow local access to your Jekyll hosted website by using a command such as "*jekyll serve --host 0.0.0.0 --port 4000*". Public access can be allowed by forwarding the given port on your router.
