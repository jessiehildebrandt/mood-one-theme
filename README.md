# mood-one-theme
### Version 1.1.0

[![MELPA](https://melpa.org/packages/mood-one-theme-badge.svg)](https://melpa.org/#/mood-one-theme)
[![MELPA Stable](https://stable.melpa.org/packages/mood-one-theme-badge.svg)](https://stable.melpa.org/#/mood-one-theme)

## About

`mood-one-theme` is a dark color scheme that aims to replicate some of the features of the Doom One theme.

## Features

* Beautiful dark color scheme inspired by the Doom One theme

* Custom fringe bitmaps for diff-hl, flycheck, and flymake

* Lightweight with no dependencies

## Preview

![Preview Image](https://gitlab.com/jessieh/mood-one-theme/raw/assets/mood-one-theme.png "Preview Image")

## Configuration

### Custom Neotree Configuration

`(eval-after-load 'neotree #'mood-one-theme-neotree-configuration-enable)`

### Custom Fringe Bitmaps

To replace default line continuation/line wrap fringe bitmaps:
`(mood-one-theme-arrow-fringe-bmp-enable)`

To enable custom fringe bitmaps for [diff-hl](https://github.com/dgutov/diff-hl):
`(setq diff-hl-fringe-bmp-function #'mood-one-theme-diff-hl-fringe-bmp-function)`

To enable custom fringe bitmaps for [flycheck](https://www.flycheck.org/en/latest/):
`(eval-after-load 'flycheck #'mood-one-theme-flycheck-fringe-bmp-enable)`

To enable custom fringe bitmaps for [flymake](https://www.emacswiki.org/emacs/FlyMake):
`(eval-after-load 'flymake #'mood-one-theme-flymake-fringe-bmp-enable)`

## Known Issues

* No known issues.

If you experience any issues with this package, please
[open an issue](https://gitlab.com/jessieh/mood-line/issues/new)
on the issue tracker.

Suggestions for improvements and feature requests are always appreciated, as well!
