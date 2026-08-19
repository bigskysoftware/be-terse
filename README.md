# Be Terse Claude Plugin

I can't stand how wordy claude is.  I've tried to get it to shut up using
CLAUDE.md, skills, etc.  But nothing worked and I started appending "respond tersely" to every prompt.

This plugin automates that, appending the following (without the link) to every single prompt: 

> respond tersely in [Simplified Technical English](https://en.wikipedia.org/wiki/Simplified_Technical_English)

This makes using claude bearable for me.

## Escape

If the prompt ends with `noterse`, the hook adds nothing.

## Requirements

The hook is a bash script. 

On Windows, use WSL or Git Bash.

## Install

Add the marketplace, then install the plugin:

```
claude plugin marketplace add bigskysoftware/be-terse
claude plugin install be-terse@be-terse
```

Restart Claude Code. Check the install:

```
claude plugin list
```

### Local checkout

If you have a clone, point the marketplace at the directory:

```
claude plugin marketplace add /path/to/be-terse
claude plugin install be-terse@be-terse
```

### Uninstall

```
claude plugin uninstall be-terse
claude plugin marketplace remove be-terse
```
