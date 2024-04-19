# Unix starter home

Home directory configuration files and directories for Unix-like
operating systems and environments, compliant with the
[XDG Base Directory Specification](https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html)
where possible.

## Before installing under Cygwin

Open a Command Prompt and set the environment variable `CYGWIN_NOWINPATH`.

```Batchfile
setx CYGWIN_NOWINPATH 1
```

## Installation

### Clear the home directory

Open a terminal and remove all files and directories from the home
directory. Remove the `# DANGER!` prefix if you understand the
implications.

```Shell
# DANGER! find ~ -mindepth 1 -delete
```

### Clone the repository

```Shell
git clone --recurse-submodules https://github.com/robin-crampton/unix-starter-home.git ~
```

The repository contains submodules from these repositories:

  * https://github.com/ervandew/supertab
  * https://github.com/rupa/z
  * https://github.com/seebi/dircolors-solarized.git
  * https://github.com/tomasiser/vim-code-dark
  * https://github.com/tpope/vim-unimpaired

### Run the configuration script

```Shell
~/.config/unix-starter-home-configure
```

The script:

  * restricts access to directories `~/.cache`, `~/.local/state` and
    `~/.ssh`
  * removes git-related files and directories created by the `git clone`
    above.
  * removes redundant files such as this README
  * if running under Cygwin, changes the
    [cygdrive path prefix](https://cygwin.com/cygwin-ug-net/using.html#cygdrive)
    for the user so that drives are mounted on `/mnt/<drive-letter>`
    instead of `/cygdrive/<drive-letter>` for compatibility with the
    [Filesystem Hierarchy Standard](https://en.wikipedia.org/wiki/Filesystem_Hierarchy_Standard)
    and the
    [Windows Subsystem for Linux](https://en.wikipedia.org/wiki/Windows_Subsystem_for_Linux).

### Cygwin-specific installation steps

A typical Cygwin installation contains 2 shortcuts to the terminal:

```Batchfile
C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Cygwin\Cygwin64 Terminal.lnk
C:\Users\Public\Desktop\Cygwin64 Terminal.lnk
```

Change the `Target` property of each shortcut to:

```Batchfile
C:\cygwin64\bin\mintty.exe --position centre --size maxheight -
```

You might like to change the icon of each shortcut to this icon:

```Batchfile
C:\cygwin64\home\%USERNAME%\.config\mintty\icons\prompt.#d4d4d4.transparent-background.ico
```

### Check the installation

Close and reopen the terminal to check the installation.
