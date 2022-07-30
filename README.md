# Introduction

This is the NVIM configuration I'm using. Feel free to reuse it.

## Setup

Clone this repository to the ~/.config/nvim directory using the 

```
git clone git@github.com:alesbrelih/nvim-config.git ~/.config/nvim/
```

This configuration uses the [mason](https://github.com/williamboman/mason.nvim) to install LSPs. Therefore once you run PackerSync you should run `:Mason` and select the LSPs, Formatters, Diagnostics you want to use.

Also you need to install treesitter support for the languages you need using:

```
:TSInstall all
```
which installs treesitter support for all of the languages or 
```
:TSInstall language
```
where <TAB> should offer you options for the available treesitter languages.
