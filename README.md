# WindowsでRustのicedと、MysqlをDockerでを使うための設定
https://kahoo.blog/howto-wsl2-docker-install/

## 0. Windows Updateを実行してから行うこと

## 1. WSL2インストール
まず、PowerShellで下記を実行する
```
wsl --install
wsl --set-version Ubuntu-20.04 2
wsl --set-default-version 2
```
同時にWSL2をZドライブなどに割り当てると良い

## 2. WindowsターミナルをMicrosoftストアからインストール(なくても良いが利便性上がるため)
https://www.microsoft.com/ja-jp/p/windows-terminal/9n0dx20hk701?rtc=1&activetab=pivot:overviewtab

## 3. WSL2に入り、スクリプトで一発インストール
引き続き、PowerShellで下記を実行
```
wsl
```
これでWSL2が起動できる

WSL2に入ることができたのが確認できたら下記を実行
```
sudo chmod +x install.sh
sudo bash install.sh
```

# セットアップは以上
