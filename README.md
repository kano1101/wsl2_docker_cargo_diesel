# WindowsでRustのicedと、MysqlをDockerでを使うための設定
https://kahoo.blog/howto-wsl2-docker-install/

## 0. Windows Updateを実行

## 1. WSL2インストール(PowerShellから実行)
```
# in powershell
wsl --install # このついでにZドライブに割り当てると良い

# in powershell
# そしてディストリビューションのバージョン設定
wsl --set-version Ubuntu-20.04 2
wsl --set-default-version 2
```

### WSL2の使用リソース上限設定
```
# in powershell
# WSL起動
wsl # ここでwslに入る

# in wsl
# WSL2がメモリを食いすぎないよう設定
echo '[wsl2]\nmemory=2GB' > ~/.wslconfig
```

## 2. WindowsターミナルをMicrosoftストアからインストール(なくても良いが利便性上がるため)
https://www.microsoft.com/ja-jp/p/windows-terminal/9n0dx20hk701?rtc=1&activetab=pivot:overviewtab

## 3. Docker CEのインストール
```
# in wsl
curl -sSL https://get.docker.com/ | CHANNEL=stable sh
docker -v
# インストールされたかバージョンを見て確認する
```

## 4. Cargoのインストール(WSL2内にインストール)
```
# in wsl
sudo apt install build-essential
curl https://sh.rustup.rs -sSf | sh
echo 'export PATH=$HOME/.cargo/bin:$PATH' | tee -a .bashrc
source .bashrc
```

## 5. Rust及びCargoのツール群インストール
```
# in wsl
rustup component add rustfmt rust-analysis rust-src
cargo install cargo-edit
```

## 6. Diesel CLIのインストール
```
cargo install diesel_cli --no-default-features --features mysql
```

# セットアップは以上
