# dotfiles

Based on [Dextro's fork](https://github.com/dextro/dotfiles.git) of the [the dotfiles of Zach Holman](https://github.com/holman/dotfiles)

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
## Table of Contents

- [dotwtf ?](#dotwtf-)
- [Installation](#installation)
- [Topical](#topical)
- [Components](#components)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

## dotwtf ?

Dotfiles are a way to personalize your system.

The legend goes that dot-files arose from a bug in the earliest days of UNIX: in an effort to avoid listing the `.` and `..` entries of a directory, the ls command skipped files that began with the '.' character. As a result, any file with a name beginning with '.' was not reported by ls, i.e. it was a "hidden" file. A user's home directory was a convenient place to put user-specific configuration files, but such files were also an eyesore; one popular solution to this problem was to make those configuration files hidden so that they wouldn't annoy the user. Thus, the tradition of dot-files was born.


## Installation

Run this:

```sh
git clone https://github.com/hstandaert/dotfiles.git ~/.dotfiles
git submodule update --init --recursive
cd ~/.dotfiles
script/bootstrap
```

This will symlink the appropriate files in `.dotfiles` to your home directory.
Everything is configured and tweaked within `~/.dotfiles`.

The main file you'll want to change right off the bat is `zsh/zshrc.symlink`,
which sets up a few paths that'll be different on your particular machine.

`dot` is a simple script that installs some dependencies, sets sane OS X
defaults, and so on. Tweak this script, and occasionally run `dot` from
time to time to keep your environment fresh and up-to-date. You can find
this script in `bin/`.

## Topical

Everything's built around topic areas. If you're adding a new area to your
forked dotfiles — say, "Java" — you can simply add a `java` directory and put
files in there. Anything with an extension of `.zsh` will get automatically
included into your shell. Anything with an extension of `.symlink` will get
symlinked without extension into `$HOME` when you run `script/bootstrap`.

## Components

There's a few special files in the hierarchy.

- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made
  available everywhere.
- **topic/\*.zsh**: Any files ending in `.zsh` get loaded into your
  environment.
- **topic/path.zsh**: Any file named `path.zsh` is loaded first and is
  expected to setup `$PATH` or similar.
- **topic/completion.zsh**: Any file named `completion.zsh` is loaded
  last and is expected to setup autocomplete.
- **topic/\*.symlink**: Any files ending in `*.symlink` get symlinked into
  your `$HOME`. This is so you can keep all of those versioned in your dotfiles
  but still keep those autoloaded files in your home directory. These get
  symlinked in when you run `script/bootstrap`.
