# Bash

## Terminal

General tips and `~/.bashrc` functions and settings to make the Linux
experience better.

### Name terminal tabs

I found this workaround in [this Stack Exchange answer].

Insert the below function into `~/.bashrc`. Open a new terminal tab with
`Ctrl` + `Shift` + `t` and type `set-title <some terminal title>`.

``` bash
function set-title() {
   if [[ -z "$ORIG" ]]; then
      ORIG=$PS1
   fi
   TITLE="\[\e]2;$*\a\]"
   PS1=${ORIG}${TITLE}
}
```

### Close terminal

`Ctrl` + `Shift` + `w`

## Bash Tips

### Utilizing bash command history

This information was pulled from [this DigitalOcean tutorial] .

Store extra history by changin a few parameters in `~/.bashrc` for the
number of lines to be stored in memory and in the actual history file.

``` bash
HISTSIZE=5000        # lines in memory
HISTFILESIZE=10000   # lines to disk
```

Append to history file instead of overwriting it in every new terminal
session.

``` bash
shot -s histappend
```

This following line will allow for each terminal session to have access
to all of the commands being used in any other open terminal sessions
instead of having to wait for a session to close before having access to
it\'s commands.

``` bash
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
```

All together now. Open `~/.bashrc`.

``` bash
HISTSIZE=5000        # lines in memory
HISTFILESIZE=10000   # lines to disk

shot -s histappend

PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

# Ignore commands that start with a space because they are probably a mistake
# Also ignore duplicates typed in succession
HISTCONTROL=ignorespace:ignoredups

# Shorthand for ignoring both
HISTCONTROL=ignoreboth

# Set a date format to identify when commands were run
HISTTIMEFORMAT="%m/%d/%y %T  "
```

Close `~/.bashrc`.

Source `~/.bashrc` to make the changes take effect immediately.

``` bash
$ source ~/.bashrc
```

### Viewing and using bash history

The bash history file is usually stored in `/home/<user>/.bash_history`.
You can check the path on any given machine with `echo $HISTFILE`.

View commands in history.

``` bash
# View all commands
$ history

# View last 10 commands
$ history 10

# View all cd commands
$ history | grep cd
```

Executing a command from history.

``` bash
# Execute command 10 from history
$ !<commandNumber>

# Example
$ !10

# Execute the command ran two executions ago
$ !-<timesCalledAgo>

# Example
$ !-2

# Execute previous command
$ !!

# Example (run previous command as sudo)
$ sudo !!
```


  [this Stack Exchange answer]: https://unix.stackexchange.com/a/186167/166226
  [this DigitalOcean tutorial]: https://www.digitalocean.com/community/tutorials/how-to-use-bash-history-commands-and-expansions-on-a-linux-vps
