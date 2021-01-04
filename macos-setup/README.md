Mac OS X Setup
==============
## !!注意!!
（2021.1.4）Ansibleのhomebrewモジュールにて、アプリ名にハイフンが入るアプリはインストール不可のため、対象アプリはコメントアウト中。
- 既知のbug。brewコマンド手打ちでインストール可能



## 確認済みバージョン
macOS Big Sur（11.1）



## セットアップ手順

* Xcodeをインストール

```bash
$ xcode-select --install
```

* [homebrew](http://brew.sh/)をインストール

```bash
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

* Ansibleをインストール
```bash
brew install ansible
```


* [dotfiles](https://github.com/s-naoya/dotfiles.git)をクローン

```bash
$ git clone https://github.com/s-naoya/dotfiles.git ~dotfiles
```


* [Ansible](https://github.com/ansible/ansible)を実行

```bash
$ pip install -r requirements.txt
$ ./run
```

* 手動インストール
    - Affinity
    - Parallels
    - some AppStore app


<!-- * add japanese input method

```text
1. open System Preferences
2. open Keyboard
3. open Input Source
4. add japanese
``` -->

<!-- * Add startup app

```text
1. Open System Preferences
1. Open User & Groups
1. Add firefox/iterm2/slack
``` -->

<!-- * Change clock date format -->

<!-- * Automatically hide tool bar -->

<!-- * Enable ssh login (Optional)

Edit `/private/etc/sshd_config`, then

```bash
$ sudo launchctl load /System/Library/LaunchDaemons/ssh.plist
``` -->

<!-- * Setup Network (Optional)

```text
1. Open System Preferences
2. Open Network
3. Setup network manually
4. Add DNS
``` -->


