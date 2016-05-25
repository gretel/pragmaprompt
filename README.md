[![Slack Room][slack-badge]][slack-link]

# pragmaprompt

A **pragmatic** `bash` prompt done by a [`fish-shell`](https://github.com/fish-shell/fish-shell) user!

* Lighweight and simple, _no bloat_.
* Fast, very much so.
* Code validated using [`bashate`](https://github.com/openstack-dev/bashate) and [`shellcheck`](https://github.com/koalaman/shellcheck).
* Compatible and quite `POSIX`.

Supports prompting:

* Username (in *warning red* if root)
* Timestamp of last command
* Return value of last command
* State of version control (powered by [`vcprompt`](https://bitbucket.org/gward/vcprompt))
* Active *Python* `virtualenv` or current version managed by [`pyenv`](https://github.com/yyuu/pyenv).

![pragmaprompt]

> Tested on *iTerm3 nightlies*.

## Installation

### Manually

Clone this repository or get the file somehow and put it at `~/.bash_prompt`.

Finally, include the file in your `.bashrc` **or** `.bash_profile`:

```
source "$HOME/.bash_prompt"
```

## Integration

While truly optional the following tool is supported:

* [`vcprompt`](https://bitbucket.org/gward/vcprompt) - *git*, *hg*, and *svn* info at low latencies
* [`pyenv`](https://github.com/yyuu/pyenv) - the currently activated *virtualenv* is shown - nice for *Python* hack*etc - otherwise maybe not.

On *OS X* *homebrew* can be used to get these:

```
brew install pyenv --HEAD
brew install vcprompt --HEAD
```

> Note: The *bitbucket* repo of `vcprompt` *homebrew* uses is one of the few actually being maintained.

## Terminal Settings

A recommandable and well-matching font:

* [Literation Mono](https://github.com/powerline/fonts/tree/master/LiberationMono)

[vcprompt]: https://bitbucket.org/gward/vcprompt
[pragmaprompt]: https://cloud.githubusercontent.com/assets/80815/15529646/1776807a-224f-11e6-8bf0-77c210919af1.png

## Have Fish?

If you tend to use [`fish-shell`](https://github.com/fish-shell/fish-shell) please check out the [`cyber-trance`](https://github.com/fishgretel/cyber-trance) theme for a similar approach.

[vcprompt]: https://bitbucket.org/gward/vcprompt
[pragmaprompt]: https://cloud.githubusercontent.com/assets/80815/15529646/1776807a-224f-11e6-8bf0-77c210919af1.png

