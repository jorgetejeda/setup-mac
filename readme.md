# Setup MacOS

# Setting Finder

This is up to you. Open **Finder** and press `cmd + ,` to open the preferences, in the first tab **General** add the following settings to remove unnecessary information from the **Desktop**. At the bottom where it says **New Finder windows show** your main file, it will always open the Finder in your home directory.

![Untitled](Setup%20MacOS%206f47239e181445d6b954a9744523f9b4/Untitled.png)

Let’s click on **Sidebar** the following settings.

![Untitled](Setup%20MacOS%206f47239e181445d6b954a9744523f9b4/Untitled%201.png)

In the last tab

![Untitled](Setup%20MacOS%206f47239e181445d6b954a9744523f9b4/Untitled%202.png)

Close **Finder Preferences** and go to **View Option** and add the following settings.

![Untitled](Setup%20MacOS%206f47239e181445d6b954a9744523f9b4/Untitled%203.png)

# Setting Dock & Menu Bar

Add the following settings. 

![Untitled](Setup%20MacOS%206f47239e181445d6b954a9744523f9b4/Untitled%204.png)

Let’s turn off (Hide from Bar but it will always display on Control Center)

1. Bluetooth
2. AirDrop
3. Keyboard Brightness
4. Display

And on **Battery option**, let’s turn on the option **Show in Menu Bar** and **Show Percentage.**

![Untitled](Setup%20MacOS%206f47239e181445d6b954a9744523f9b4/Untitled%205.png)

# Config Alfred

Press option + space and it show **Alfred search bar,** write **Alfred** and click on the option **Show alfred preferences.**

![Untitled](Setup%20MacOS%206f47239e181445d6b954a9744523f9b4/Untitled%206.png)

Click your left side, click on **Features > Default Result** and add the following settings.

![Untitled](Setup%20MacOS%206f47239e181445d6b954a9744523f9b4/Untitled%207.png)

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

![Untitled](Setup%20MacOS%206f47239e181445d6b954a9744523f9b4/Untitled%208.png)

After this let’s go back into our **Alfred Preferences** and In our first option call **General** click on **Alfred Hotkey** and press `cmd + space` now every time we press `cmd + space` to open our spotlight we gonna see **Alfred.**

![Untitled](Setup%20MacOS%206f47239e181445d6b954a9744523f9b4/Untitled%209.png)

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
```

Then through your terminal go to your Desktop and type.

```bash
xargs brew install < apps.txt
```

This will run `brew install` for every line on your txt.

now we can close our terminal and open **iTerm2.**

# Config iTerm2

After open **iTerm2,** let’s press `cmd + ,` to open preference window.

![Untitled](Setup%20MacOS%206f47239e181445d6b954a9744523f9b4/Untitled%2010.png)

![Untitled](Setup%20MacOS%206f47239e181445d6b954a9744523f9b4/Untitled%2011.png)

![Untitled](Setup%20MacOS%206f47239e181445d6b954a9744523f9b4/Untitled%2012.png)

Now let’s click on profile’s tab and if you want give a main profile a name, change **Working Directory** to **Reuse previous session’s directory.**

![Untitled](Setup%20MacOS%206f47239e181445d6b954a9744523f9b4/Untitled%2013.png)

Click on **Colors** tab and click on **Background color** and write **R(26) G(24) B(46)** then close it.

Click on **Text** tab and add this configuration.

![Untitled](Setup%20MacOS%206f47239e181445d6b954a9744523f9b4/Untitled%2014.png)

If we want to move with tab on our terminal and avoid **]D]D,** let’s click on **Keys** tab and click on **Key Mappings,** at the bottom let’s click where it says **Presets** and select the option **Natural Text Editing,** now we can move using **Tab** in our terminal.

![Untitled](Setup%20MacOS%206f47239e181445d6b954a9744523f9b4/Untitled%2015.png)

# Config Alfred

Press cmd + space and write Alfred it should show and option **Show Alfred Preferences.** Add the following settings on **Default Results**.

![Untitled](Setup%20MacOS%206f47239e181445d6b954a9744523f9b4/Untitled%2016.png)

On **Web Search** uncheck everything but, Up to you.

1. google
2. images
3. map
4. wiki
5. imdb
6. amazon
7. ebay
8. youtube 

Now let’s replace out **MacOs Spotlight** with **Alfred**, open on your **Spotlight** or cmd + space

# Installing Oh-my-zsh

[Oh My Zsh](https://ohmyz.sh) is a delightful, open source, community-driven framework for managing your Zsh configuration.

On your terminal paste, this gonna create .zsh file.

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

## Installing plugins for zsh

[zsh-suggestion](https://github.com/zsh-users/zsh-autosuggestions) It suggests commands as you type based on history and completions.

```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```