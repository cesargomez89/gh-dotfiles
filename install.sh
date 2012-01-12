echo  source ~/.gh-dotfiles/profile >> ~/.profile
echo  source ~/.gh-dotfiles/profile >> ~/.bashrc

echo [color] >> ~/.gitconfig
echo   branch = auto >> ~/.gitconfig
echo   diff = auto >> ~/.gitconfig
echo   status = auto >> ~/.gitconfig
  
echo [color "branch"] >> ~/.gitconfig
echo   current = white >> ~/.gitconfig
echo   local = yellow >> ~/.gitconfig
echo   remote = green >> ~/.gitconfig

echo [color "diff"] >> ~/.gitconfig
echo   meta = yellow bold >> ~/.gitconfig
echo   frag = magenta bold >> ~/.gitconfig
echo   old = red bold >> ~/.gitconfig
echo   new = green bold >> ~/.gitconfig

echo [color "status"] >> ~/.gitconfig
echo   added = yellow >> ~/.gitconfig
echo   changed = green >> ~/.gitconfig
echo   untracked = red bold >> ~/.gitconfig
