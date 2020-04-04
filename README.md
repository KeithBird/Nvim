# About Linux

## neovim

### Vim Markdown

**zr：** 降低整个缓冲区的折叠级别

**zm：** 增加整个缓冲区的折叠级别

**za：** 打开光标所在的折叠

**zc：** 关闭光标所在的折痕

**zC：** 递归关闭光标所在的位置

### Git

[git - 简易指南](https://www.bootcss.com/p/git-guide/)

[Git - Book](https://www.git-scm.com/book/zh/v2)

|                          |                     |
|--------------------------|---------------------|
| `git init`               | 建立 git            |
| `git status`             | 版本库              |
| `git diff`               | 还没 add 的修改部分 |
| `git add .`              | 添加未添加文件      |
| `git commit -m #`        | 提交改变            |
| `git commit -am #`       | add + commit        |
| `git log`                | 查看修改记录        |
| `git reset --hard <id>`  | 退回历史commit      |
|                          |                     |
| `git push origin master` | pushmaster          |
| `git branch`             | 显示分支            |
| `git push origin #`      | 上传分支            |
| `git clone <repo> <>`    | 克隆Git 仓库        |
| `git checkout -b #`      | 创建分支            |
| `git checkout master`    | 切回主分支          |
| `git branch -d #`        | 删除分支            |
| `git checkout --<file>`  | 用HEAD恢复改动      |
| `git pull`               | 更新本地仓库        |

### Surround

|            |          |
|------------|----------|
| ds         | 删除符号 |
| cs         | 替换符号 |
| 可视模 + S | 添加符号 |

### Commentary

|        |                        |
|--------|------------------------|
| `gcc`  | 注释当前行（普通模式） |
| `gc`   | 注释当前选中的部分     |
| `gcu`  | 撤销上一次注释的部分   |
| `gcgc` | 撤销注释邻近的上下两行 |

### Neoformat

**autopep8:** `:Neoformat`

### GV

**提交浏览器**: `:GV`

### Fugitive

|            |                  |
|------------|------------------|
| `:Gstatus` | git status       |
| `:Gblameq` | git blame        |
| `:Gwrite`  | git add          |
| `:Gdelete` | git rm           |
| `:Gcommit` | 提交当前文件     |
| `:Great`   | 当前文件最新版本 |
| `:Gmove`   | git mv重命名     |

### [MarkDown](https://www.jianshu.com/p/76931cea074c)

### [Nvim-R](https://www.jianshu.com/p/76931cea074c)

### [LaTeX and Vim](https://castel.dev/post/lecture-notes-1/)



## Linux App

### SSH

[周莫烦](https://morvanzhou.github.io/tutorials/others/linux-basic/4-01-ssh-from-linux-or-mac/)

### Brew

[Brew国内镜像安装方法](https://blog.csdn.net/MTCwrite/article/details/99856756)

[清华镜像站](https://mirror.tuna.tsinghua.edu.cn/help/homebrew/)

[Linux Brew](https://www.cnblogs.com/hongdada/p/9528560.html)

|                |         |
|----------------|---------|
| `brew ls`      | 软件列表 |
| `brew ls Name` | 软件路径 |

### Apt

[Apt upgrade](http://www.baiyuxiong.com/?p=529)

[常用的Apt命令](https://www.cnblogs.com/chao538/p/7906279.html)

|                   |                  |
|-------------------|------------------|
| `apt-get update`  | 更新软件库       |
| `apt-get upgrade` | 升级软件         |
| `dpkg -L name`    | 软件包的所有位置 |
| `dpkg -l name`    | 安装路径         |
| `/usr/share`      | 软件包位置       |

### zsh

[Linux 安装 oh-my-zsh](https://www.jianshu.com/p/1df9df37ef34)

### Pip

**镜像安装**
`pip install -i https://pypi.tuna.tsinghua.edu.cn/simple numpy`

|                 |          |
|-----------------|----------|
| `pip list`      | 软件列表 |
| `pip show name` | 软件路径 |

1. apt -> python -> pip
2. [brew install python3](https://www.jianshu.com/p/998d32049be3)
3. [Python pip](https://www.runoob.com/w3cnote/python-pip-install-usage.html)
4. pip3 install --upgrade pip

[pip下载速度过慢的问题](https://www.jianshu.com/p/2df68aa7fcea)

[CentOS 安装 Python3.8](https://liqiang.io/post/install-python3-8-in-centos-973bdb81)

### Neovim

[配置 Python 开发环境](https://ncfun.gitee.io/2019/11/06/Neovim配置Python开发环境/)

### Tmux

|                         |                     |
| :---------------------- | :------------------ |
| `tmux new -s <name>`    | 新建session         |
| `tmux attach -t <name>` | 接入已存在的session |
| `tmux switch -t <name>` | 切换会话            |
| `^b+%`                  | 横分屏              |
| `^b+"`                  | 竖分屏              |
| `^b+p`                  | 上一个session       |
| `^b+s`                  | session列表         |
| `^b+$`                  | 重命名会话          |
| `^b+c`                  | 新建win             |
| `^b+p`                  | 上一个win           |
| `^b+d`                  | 将session放到后台   |
| `^b+w`                  | 窗口列表            |
| `^b+x`                  | 关闭当前win         |
| `^b+,`                  | 窗口重命名          |
| `^b <number>`           | 切换窗口            |

### Ranger

[ranger.github](https://github.com/ranger/ranger)

### FZF

[FZF.github](https://github.com/junegunn/fzf)

### the_silver_searcher

[the_silver_searcher.github](https://github.com/ggreer/the_silver_searcher)

[how to zshrc](https://www.bilibili.com/video/av80254519)

### Apache

[Apache部署](https://blog.csdn.net/weixin_38044888/article/details/90475642)

### Xvim2

[Xvim2.github](https://github.com/XVimProject/XVim2)

[在Xcode上使用Vim](https://www.jianshu.com/p/28e3f759470d?from=timeline)

### MySQL

[SQL常用语句](https://www.cnblogs.com/liu224/p/10754991.html)

