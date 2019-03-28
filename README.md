# zsh-correction-whitelist

This is a plugin for the [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
correction feature that allows you to whitelist commands by simply adding the
command to a file whitelist file.  By default, the file is called
`~/.zsh-correction-whitelist`, but you can change it by setting the option:

```sh
export ZSH\_CORRECTION\_WHITELIST\_FILE=_<filename>_
```

## Add commands to the whitelist

To add commands to the whitelist, simply add one command per line:

```sh
cmd1
cmd2
cmd3
```

