## Setup
### Installing homebrew

Instructions for linux system
```bash
echo | /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
(echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> ~/.bashrc
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
```

### Installing required packages

```bash
brew install nvim ripgrep node
```

### Installing nerd fonts
- Install nerd font and set the terminal to use nerd font.

## Neovim settings
- We are using lazy as our plugin manager, so whenever a new plugin is added to the `lua/sarthak/plugins` directory, it needs to be installed.
    - Lazy will only load the plugins that are important at startup. 
- We can install plugins using `:Lazy` to show the Lazy UI and then press `I` to install the plugins.
- To reload the configuration settings just quit and reopen nvim.

## References
- https://www.youtube.com/watch?v=6pAG3BHurdM
