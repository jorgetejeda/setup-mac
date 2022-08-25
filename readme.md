# Setup MacOS

---

# Installing Homebrew

---

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

---

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

---

After open **iTerm2,** let’s press `cmd + ,` to open preference window.

![Untitled](Setup%20MacOS%20eaf058c5b80644c9bbb73c8a9ae5de7f/Untitled.png)

![Untitled](Setup%20MacOS%20eaf058c5b80644c9bbb73c8a9ae5de7f/Untitled%201.png)

![Untitled](Setup%20MacOS%20eaf058c5b80644c9bbb73c8a9ae5de7f/Untitled%202.png)

Now let’s click on profile’s tab and if you want give a main profile a name, change **Working Directory** to **Reuse previous session’s directory.**

![Untitled](Setup%20MacOS%20eaf058c5b80644c9bbb73c8a9ae5de7f/Untitled%203.png)

Click on **Colors** tab and click on **Background color** and write **R(26) G(24) B(46)** then close it.

Click on **Text** tab and add this configuration.

![Untitled](Setup%20MacOS%20eaf058c5b80644c9bbb73c8a9ae5de7f/Untitled%204.png)

If we want to move with tab on our terminal and avoid **]D]D,** let’s click on **Keys** tab and click on **Key Mappings,** at the bottom let’s click where it says **Presets** and select the option **Natural Text Editing,** now we can move using **Tab** in our terminal.

![Untitled](Setup%20MacOS%20eaf058c5b80644c9bbb73c8a9ae5de7f/Untitled%205.png)

# Installing Oh-my-zsh

---

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