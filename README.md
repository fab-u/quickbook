# Quickbook
Quickly open jupyter notebooks from a template in VS Code (or any other editor that can be opened from the script).\
New files will be created in some directory. If several are created, they will be numbered. The template file and and directory path can be specified in the first few lines of the script.

To use it, i have a alias in my `.zshrc`:
```shell
alias quickbook="zsh ~/path/to/script/quickbook.sh
```
After that, just run `quickbook`!
