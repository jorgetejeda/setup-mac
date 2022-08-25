# Setup MacOS

# Table content

1. [Setting Finder](#item1)
2. [Setting Dock & Menu Bar](#item2)
3. [Installing Homebrew](#item3)
4. [Installing Apps](#item4)
5. [Setting iTerm2](#item5)
6. [Setting Alfred](#item6)
7. [Setting Visual Studio Code](#item7)
    1. [Change theme](#item7-1)
    2. [Font](#item7-2)
    3. [Cleaning bottom bar](#item7-3)
8. [Installing Oh-my-zsh](#item8)
    1. [Plugin](#item8-1)
    2. [Download theme](#item8-2)
    3. [Setting Oh-my-zsh](#item8-3)
    4. [Alias](#item8-4)

<a name="item1"></a>
# Setting Finder

This is up to you. Open **Finder** and press `cmd + ,` to open the preferences, in the first tab **General** add the following settings to remove unnecessary information from the **Desktop**. At the bottom where it says **New Finder windows show** your main file, it will always open the Finder in your home directory.

![Untitled](Setup%20MacOS%206f47239e181445d6b954a9744523f9b4/Untitled.png)

Let’s click on **Sidebar** the following settings.

![Untitled](Setup%20MacOS%206f47239e181445d6b954a9744523f9b4/Untitled%201.png)

In the last tab

![Untitled](Setup%20MacOS%206f47239e181445d6b954a9744523f9b4/Untitled%202.png)

The last option **When performing a search** let’s select **Search the current folder** because i hate when i try to find something in the same directory and when i click on search input this throw me results from entire computer.

Close **Finder Preferences** and go to **View Option** on top ****and add the following settings.

![Untitled](Setup%20MacOS%206f47239e181445d6b954a9744523f9b4/Untitled%203.png)

<a name="item2"></a>
# Setting Dock & Menu Bar

Add the following settings. I like to keep my Desktop clean that why im hiding the top and bottom bar.

![Untitled](Setup%20MacOS%206f47239e181445d6b954a9744523f9b4/Untitled%204.png)

Let’s turn off (Hide from Bar but it will always display on Control Center)

1. Bluetooth
2. AirDrop
3. Keyboard Brightness
4. Display

And on **Battery option**, let’s turn on the option **Show in Menu Bar** and **Show Percentage.**

![Untitled](Setup%20MacOS%206f47239e181445d6b954a9744523f9b4/Untitled%205.png)

<a name="item3"></a>
# Installing Homebrew

Open terminal and paste, this also will install **xCode**.

```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

After installation, in the terminal where it says “Next Steps” copy and paste on your terminal. it’s something like this.

```bash
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/<username>/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
```

Check if you already have installed **Homebrew**.

```bash
echo $SHELL
zsh --version
```

In case you don’t have zsh as default , copy and paste on your terminal. Make zsh default shell and reload terminal.

```bash
chsh -s /bin/zsh
```

<a name="item4"></a>
# Installing Apps

| iterm2 | It’s a replacement for Terminal and the successor to iTerm. It works on Macs with macOS 10.14 or newer. |
| --- | --- |
| Rectangle | Move and resize windows in macOS using keyboard shortcuts or snap areas |
| App-cleaner | Deleting software on a Mac is not just about dragging applications to Trash |
| Alfred | Search your Mac and the web, and be more productive with custom actions to control your Mac. |
| Mysql | Database |
| insomnia | Deliver high quality APIs through standards and collaboration with the Insomnia API design platform. |
| discord | Communication |
| firefox-developer-edition | Get the latest features, fast performance, and the development tools you need to build for the open web. |
| keka | The macOS file archiver Store more, share with privacy |
| visual-studio-code | Code Editor |

Create apps.txt with this and save on your Desktop.

```
iterm2
rectangle 
app-cleaner
alfred
mysql
visual-studio-code
insomnia
discord
firefox-developer-edition
keka
git
node
```

Then through your terminal go to your Desktop and type.

```bash
xargs brew install < apps.txt
```

This will run `brew install` for every line on your txt.

now we can close our terminal and open **iTerm2.**

<a name="item5"></a>
# Setting iTerm2

After open **iTerm2,** let’s press `cmd + ,` to open preference window.

![Untitled](Setup%20MacOS%206f47239e181445d6b954a9744523f9b4/Untitled%206.png)

![Untitled](Setup%20MacOS%206f47239e181445d6b954a9744523f9b4/Untitled%207.png)

![Untitled](Setup%20MacOS%206f47239e181445d6b954a9744523f9b4/Untitled%208.png)

Now let’s click on profile’s tab and if you want give a main profile a name, change **Working Directory** to **Reuse previous session’s directory.**

![Untitled](Setup%20MacOS%206f47239e181445d6b954a9744523f9b4/Untitled%209.png)

Click on **Colors** tab and click on **Background color** and write **R(26) G(24) B(46)** then close it.

Click on **Text** tab and add this configuration.

![Untitled](Setup%20MacOS%206f47239e181445d6b954a9744523f9b4/Untitled%2010.png)

If we want to move with tab on our terminal and avoid **]D]D,** let’s click on **Keys** tab and click on **Key Mappings,** at the bottom let’s click where it says **Presets** and select the option **Natural Text Editing,** now we can move using **Tab** in our terminal.

![Untitled](Setup%20MacOS%206f47239e181445d6b954a9744523f9b4/Untitled%2011.png)

<a name="item6"></a>
# Setting Alfred

Press option + space and it show **Alfred search bar,** write **Alfred** and click on the option **Show alfred preferences.**

![Untitled](Setup%20MacOS%206f47239e181445d6b954a9744523f9b4/Untitled%2012.png)

Click your left side, click on **Features > Default Result** and add the following settings.

![Untitled](Setup%20MacOS%206f47239e181445d6b954a9744523f9b4/Untitled%2013.png)

On Your left side click on **Web Search** and uncheck everything but:

1. Google
2. Images
3. Map
4. Wiki
5. Amazon
6. Ebay
7. Imdb
8. Youtube

Let’s change **Alfred** appearance, on your left side click on the option **Appearance** and select the option **Alfred modern dark.**

Now let’s replace **MacOs Spotlight** with **Alfred**, press `cmd + space` add write **keyboard** and add the following settings. Click on **Shortcuts** tab, then on **Spotlight** option and uncheck the option **Show Spotlight search.**

![Untitled](Setup%20MacOS%206f47239e181445d6b954a9744523f9b4/Untitled%2014.png)

After this let’s go back into our **Alfred Preferences** and In our first option call **General** click on **Alfred Hotkey** and press `cmd + space` now every time we press `cmd + space` to open our spotlight we gonna see **Alfred.**

![Untitled](Setup%20MacOS%206f47239e181445d6b954a9744523f9b4/Untitled%2015.png)

<a name="item7"></a>
# Setting VSCODE

After install **Visual Studio Code** with **Homebrew** let’s open Alfred and write Visual Studio Code, if you already have a **gist**, just install the **[Setting Sync](https://marketplace.visualstudio.com/items?itemName=Shan.code-settings-sync)** and log in with your **Github account.**

Extensions that i use:

| Auto Close Tag | Automatically add HTML/XML close tag, same as Visual Studio IDE or Sublime Text does. |
| --- | --- |
| Auto Rename Tag | Automatically rename paired HTML/XML tag, same as Visual Studio IDE does. |
| Code Beautifier Visual Studio Code Extension | If you beautify other languages ​​the code/text will be beautified to Visual Studio Code's default formatter. |
| Code Runner | Run code snippet or code file for multiple languages |
| Spelling Checker for Visual Studio Code | A basic spell checker that works well with code and documents. |
| ColdCode | An easy and configurable way to take screenshots of your elegant code. |
| Dobri Next Pro  | 23 colorful and meticulous dark theme, 2 Icons packs with Vivid colors and 7 Border Hacks |
| Error Lens | ErrorLens turbo-charges language diagnostic features by making diagnostics stand out more prominently, highlighting the entire line wherever a diagnostic is generated by the language and also prints the message inline. |
| VS Code ES7+ React/Redux/React-Native/JS snippets | JavaScript and React/Redux snippets in ES7+ with Babel plugin features for VS Code |
| VS Code ESLint extension |  |
| Fluent Icons | A product icon theme for Visual Studio Code |
| GitLens | GitLens supercharges
 Git inside VS Code and unlocks untapped knowledge within each repository. |
| Highlight Matching Tag | This extension highlights matching opening and/or closing tags. |
| Import Cost | This extension will display inline in the editor the size of the imported package. |
| JavaScript | This extension contains code snippets for JavaScript in ES6 syntax for Vs Code
 editor (supports both JavaScript and TypeScript). |
| Mintlify Doc Writer | Writing documentation sucks. Let Mintlify take care of it. Just hightlight code and see the magic. |
| Paste JSON as Code | Allow me to transform Json into Typescript Interface, python, Go, C# … |
| Path Intellisense | Visual Studio Code plugin that autocompletes filenames. |
| Prettier Formatter |  |
| Quokka.js  | Quokka.js is a developer productivity tool for rapid JavaScript / TypeScript prototyping. Runtime values are updated and displayed in your IDE next to your code, as you type. |
| Simple React Snippets |  |
| Sublime Importer for VS Code |  |
| Svg Preview |  |
| TODO HIGHLIGHT | Sometimes you forget to review the TODOs you've added while coding before you publish the code to production. So I've been wanting an extension for a long time that highlights them and reminds me that there are notes or things not done yet. |
| Typescript React hooks tools | A tools who provide a series of refactors about react hooks. |

<a name="item7-1"></a>
## Change Theme

Press `cmd + shift + p` it will open an input on middle-top on your visual studio code and write. Select the first option.

![Untitled](Setup%20MacOS%206f47239e181445d6b954a9744523f9b4/Untitled%2016.png)

it will show up a bunch on theme, i use the theme we already installed **Dobri.** You can use whatever you want. I use **Dobri Next -A00- Black**

And for the VSCODE Icons let’s press again `cmd + shift + p` and write.

![Untitled](Setup%20MacOS%206f47239e181445d6b954a9744523f9b4/Untitled%2017.png)

Select whatever you want, that up to you, i use **Dobri Next -A02- Official Icons.**

<a name="item7-2"></a>
## Add Font

I prefer to use **Operator Mono** in this repo there is a file called **[Operator mono](Operator%20Mono)** download it and install on your computer, then go back to **Visual Studio Code,** on the top bar click on the option **code>preferences>settings**, it will open a new tab with a search. On the search write **Font** it will show font’s options, look for the option and add the font. Just add **Operator Mono** if you don’t have any other font.

![Untitled](Setup%20MacOS%206f47239e181445d6b954a9744523f9b4/Untitled%2018.png)

<a name="item7-3"></a>
## Cleaning bottom bar VSCODE

I don’t like to see a bunch of message on bottom bar, so, go to the bottom bar and right click and uncheck the next options. This will remove unnecessary icons on your bottom bar.

![Untitled](Setup%20MacOS%206f47239e181445d6b954a9744523f9b4/Untitled%2019.png)

<a name="item8"></a>
# Installing Oh-my-zsh

[Oh My Zsh](https://ohmyz.sh) is a delightful, open source, community-driven framework for managing your Zsh configuration.

On your terminal paste, this gonna create .zsh file.

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

<a name="item8-1"></a>
## Installing plugins for zsh

[zsh-suggestion](https://github.com/zsh-users/zsh-autosuggestions) It suggests commands as you type based on history and completions.

```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

<a name="item8-2"></a>
## Download Oh-my-zsh theme

Download **[jtejeda.zsh-theme](jtejeda.zsh-theme)** we already have this in the repository, then in our terminal let’s write `cd ~/.oh-my-zsh/themes && code .` and drop the theme we already downloaded.

<a name="item8-3"></a>
## Setting Oh-my-zsh

Now on the terminal write `code **~/.zshrc**` it will open visual studio code with zsh file.

press `cmd + f` and look for **ZSH_THEME** and replace with the next with the name of theme we downloaded.

```bash
ZSH_THEME="jtejeda"
```

Now inside visual studio code press cmd + f and write **plugins** and replace with the code below to activate our zsh-suggestion.

```bash
plugins=(git zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh
```

<a name="item8-4"></a>
## Alias

These are the aliases that i use, this is my personal selection

```bash
# ------
# Alias
# ------

# git
alias gi='git init'
alias gb='git branch'
alias gbd='git branch -D'
alias giy='git init -y'
alias gaa='git add .'
alias gss='git status -s'
alias gcm='git commit -m'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gp='git pull'
alias gpsh='git push origin head'

# Files
alias o='open .'
alias ophp='open /Applications/MAMP/htdocs'
alias desktop='cd ~/Desktop'
alias themes='cd ~/.oh-my-zsh/themes'

# show - hide files
alias showFiles='defaults write com.apple.Finder AppleShowAllFiles true && killall Finder'
alias hideFiles='defaults write com.apple.Finder AppleShowAllFiles false && killall Finder'
alias hideDesktop='defaults write com.apple.finder CreateDesktop false; killall Finder'
alias showDesktop='defaults write com.apple.finder CreateDesktop true; killall Finder'

# Npm
alias start='npm start'

#React native
alias reactNative='create-react-native-app'
```

The first block is for **git**

The second block is to handle files and directories, to move open a directory, to move into Desktop etc

The third block is hide or show files

The fourth block is to handle **npm**, yeah im a lazy person

After this configuration save it and go to our terminal and write the command to active our configuration.

```bash
source ~/.zshrc
```

If we did everything well i won’t show any messages, reload your terminal and you should see your changes.