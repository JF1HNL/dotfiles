# 他マシンで書き出されたエクステンション一覧を使ってインストール
for extension in `cat extensions.txt`; do
  code --install-extension $extension
done