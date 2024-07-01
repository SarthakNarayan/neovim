## Setup
### Installing homebrew

Instructions for linux system
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
(echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> ~/.bashrc
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
```

### Installing nvim

```bash
brew install nvim
```

### Installing nerd fonts
- Install nerd font and set the terminal to use nerd font.

## Neovim settings
- We are using lazy as our plugin manager, so whenever a new plugin is added to the `lua/sarthak/plugins` directory, it needs to be installed.
    - Lazy will only load the plugins that are important at startup. 
- We can install plugins using `:Lazy` to show the Lazy UI and then press `I` to install the plugins.
