# noapm
NOt A Package Manager - Tool to install miscellaneous packages / tools which don't have installation provided simply by a common package manager.

### Motivation
Many tools i.e. `poetry`, `conda`, `rustup`, etc. have their own installation instructions which aren’t as simple as `sudo apt install <package>` or `brew install <package>`. It’s a pain to remember how to install them when setting up a new system so for some of these tools, I have created `noapm` which is a script / command to install these tools via their maintainers’ recommended installation method.

There may be times that the method provided by this tool is out of date with the maintainers’ recommended method. In that case, please open an issue or PR to update the installation method. You can see information about what this script does to install / configure a tool by running `noapm info <package>`.

**Note**: Things are referred to as a 'package' all though that's not necessarily the case for some of them (otherwise they'd be more easily available from a package manager). It's just a convenient term to use.

# Installation
```
curl -fsSL https://raw.githubusercontent.com/BaxHugh/noapm/main/noapm > ~/.local/bin/noapm && chmod +x ~/.local/bin/noapm
```
or wherever you'd like to install it.

# Usage
See `noapm help`
<!-- TODO: Update this part of the README whenever help gets updated -->
```
Usage: noapm <install|uninstall> [options] <package> <package> ...
Usage: noapm self <command> [options]
Usage: noapm [options]
Install or uninstall miscellaneous packages / tools which don't have installation provided simply by a common package manager.
Also install oh-my-zsh completions for packages if available.

Options:
  --version      Print version
  -h, --help     Print this help message

See further help for each command with 'noapm <command> --help'
Commands:
  install        Install packages
  uninstall      Uninstall packages
  self           Command for managing noapm itself
  list           List available packages
  info           Print information about how this script will install or uninstall a package
  help           Print this help message
```

# Contibution
At the moment, these install subroutines might be somewhat opinionated to my own setup so it may not currently be all that useful to everyone. But feel free to make suggestions or contribute your own routine, and I'll see if it fits.
This isn't the most scalable solution to installing misc packages.
