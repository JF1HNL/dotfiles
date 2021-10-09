cd c:\Users\JF1HN\AppData\Roaming\Code\User

del settings.json.bak
del keybindings.json.bak
rmdir snippets.bak

ren settings.json settings.json.bak
ren keybindings.json keybindings.json.bak
ren snippets snippets.bak

mklink  settings.json c:\Users\JF1HN\Desktop\osk\dotfiles\visual-studio-code\settings.json
mklink  keybindings.json c:\Users\JF1HN\Desktop\osk\dotfiles\visual-studio-code\keybindings.json
mklink /D snippets c:\Users\JF1HN\Desktop\osk\dotfiles\visual-studio-code\snippets

timeout /t 10