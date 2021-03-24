# cpbooster :heart: vim

## About

[**cpbooster**](https://github.com/searleser97/cpbooster) plugin for vim or neovim

![video-demo-min](https://user-images.githubusercontent.com/5056411/112360916-71608280-8c98-11eb-82c2-04b4898034e1.gif)


## Installation

- Install [**cpbooster**](https://github.com/searleser97/cpbooster)

```
npm install cpbooster -g
```

- Install **cpbooster.vim** using your preferred plugin manager

  - Using [vim-plug](https://github.com/junegunn/vim-plug):

```vim
Plug 'searleser97/cpbooster.vim'
```

## Commands

| Command              | Description                                                                                             |
| -------------------- | ------------------------------------------------------------------------------------------------------- |
| `:Test [id]`         | Test your current code against all available testcases for it,<br/>or just one testcase if [id] is set. |
| `:Debug [id]`        | Run your current code with your debugging flags,<br/>or run it against one testcase if [id] is set.     |
| `:Create <filename>` | Create source file loading the corresponding<br/>template for the file extension.                       |
| `:Rtest [id]`        | Test the last compiled version of your code.<br/>Same as `:Test` but without recompiling.               |
| `:Rdebug [id]`       | Debug the last compiled version of your code.<br/>Sames as `:Debug` but without recompiling.            |
| `:Addtc`             | Add new test case for your current code.                                                                |
| `:Submit`            | Submit your code to an Online Judge. (Codeforces, AtCoder, ...)                                         |

## Future Updates

- Add `:TestAs <filename>` command
- Add `:DebugAs <filename>` command

## License

`cpbooster.vim` is licensed under the [GNU General Public License v3.0](https://github.com/searleser97/cpbooster.vim/blob/master/LICENSE)
