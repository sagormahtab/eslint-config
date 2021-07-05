# Configure Eslint with a Single command

This batch script installs all the packages and creates all necessary files with a single command on your **windows** machine for NodeJS project.

Installing and configuring [Eslint](https://eslint.org/) on your Nodejs project can be cumbersome. Usually, there are so many packages to install including the creation of .eslintrc and .prettier files. Then configuring them by writing different options in those files. This consumes time and becomes a real boring stuff when you need to do all of these for every single project. Moreover, to fix all the issues automatically you either need to create a script or configure [prettier](https://prettier.io/) to automatically fix on save.

Phew! so many steps to follow. To make your life easier there are several **npm** packages out there to help you. One famous one by Wesbos is [eslint-config-wesbos](https://www.npmjs.com/package/eslint-config-wesbos). But this lack some things like you have to create .eslintrc.json file and configure it as the doc says. Moreover you need to run a **lint:fix** command to fix all the issues.

This batch script does all of these for you! Installing all the packages, creating and configuring .eslintrc, .prettierrc and fixing issues on save.

Sounds good? Without further ado let's get started.

## Prerequisite

- Before using the script you need to install [prettier plugin](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode) and set it as the default formatter on your VSCode editor.
- Enable _Format on Save_ on your VSCode settings.
  > Note: If you are new to this step, search on Visual Studio Code's Extension panel for prettier. Follow their doc or go for online resources to achieve these.

## Install/Configure

### Get it on your local machine

1. Use `git clone https://github.com/sagormahtab/eslint-config.git` or download it as a zip from the upper green **Code** button.
2. Create a directory named `eslint-config` in your **C:** drive. Copy `.eslintrc.json`, `.prettierrc` and `eslint-node.bat` from your downloaded directory to **C:\eslint-config**.

   > Note: Wanna keep files on different drive? Open _eslint-node.bat_ with a editor and change the directory according to your path on line 4 and 5

### Setting batch on Environment path

For accessing our batch file from anywhere of our computer, add it on system environment path.

- Go to start menu. Type _env_, select > Edit the system environment variables> Environment variables...> Select **Path** from environment variables> Choose _edit_> Select _new_ > type `C:\eslint-config` on there. OK, OK, OK!

> Note: if you have kept your **.bat** file somewhere else, type that directory path here.

## Usage

Aight! Done with configuring. To use this script head over to your Node project's **root** directory. Open the terminal. Then type:

```
eslint-node
```

This will install all 9 packages including their peer-dependencies as dev-dependency and will also generate .eslintrc.json and .prettierrc with their necessary content.

### with yarn

If you're using _yarn_ then add a -y flag like this:

```
eslint-node -y
```

---

That's actually it! Whenever you create a new project just run the command from above and get everything related to eslint configured automatically.

## Customization

If you need to add or modify any rule head over to _.eslintrc.json_ or _.prettierrc_ and get your job done there.

However, if you need to permanantly add/modify your rule everytime you run the command then head over to **C:\eslint-config** (or your changed directory) and tweak the files over there. Because, behind the scene the .bat file copies _.eslintrc.json_ and _.prettierrc_ from there to your project diretory.
