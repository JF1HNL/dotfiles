cd ~/Library/Application\ Support/Code/User

# 前の設定をバックアップ
mv settings.json settings.json.bak
mv keybindings.json keybindings.json.bak
mv snippets snippets.bak

# ~/dotfiles/vscode以下に他マシンと共有したい設定ファイルが置かれている想定
# 自分はこのdotfilesをgithubで管理している
#
# 元の設定ファイルの代わりにシンボリックリンクを置いておく
ln -sf ~/dotfiles/visual-studio-code/settings.json settings.json
ln -sf ~/dotfiles/visual-studio-code/keybindings.json keybindings.json
ln -sf ~/dotfiles/visual-studio-code/snippets snippets

# 他マシンで書き出されたエクステンション一覧を使ってインストール
for extension in `cat ~/dotfiles/visual-studio-code/extensions.txt`; do
  code --install-extension $extension
done