# WindowsでRustのicedと、MysqlをDockerでを使うための設定
https://kahoo.blog/howto-wsl2-docker-install/

## 0. Windows Updateを実行

## 1. WSL2インストール(PowerShellから実行)
```
wsl --install
wsl --set-version Ubuntu-20.04 2
wsl --set-default-version 2
```
同時にWSL2をZドライブなどに割り当てると良い

## 2. WindowsターミナルをMicrosoftストアからインストール(なくても良いが利便性上がるため)
https://www.microsoft.com/ja-jp/p/windows-terminal/9n0dx20hk701?rtc=1&activetab=pivot:overviewtab

## 3. WSL2に入れたらスクリプトで一発インストール
```
wsl
```
でWSL2を起動し、WSL2に入ることができたのが確認できたら下記を実行
```
sudo chmod +x install.sh
sudo bash install.sh
```

# セットアップは以上
