for /f %%i in (extensions.txt) do (
  code --install-extension %%i
)