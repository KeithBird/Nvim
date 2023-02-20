# App Store
# - Xnip
# - Xcode
# - Eudic
# - Reeder
# - Magnet
# - PasteNow
# - Developer
# - amphetamine
# - Tencent Lemon





# Website
# [Control Room](https://github.com/twostraws/ControlRoom)
# [Cleaner for Xcode](https://github.com/waylybaye/XcodeCleaner-SwiftUI)
# [ClashX Pro](https://install.appcenter.ms/users/clashx/apps/clashx-pro/distribution_groups/public)





echo "install brew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "brew update..."
brew update

echo "install zsh..."
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/KeithBird/nvim/.zshrc ~/.zshrc

chsh -s /bin/zsh





# Cask Apps

echo "install IINA"
brew install --cask iina

echo "install thunder"
brew install --cask thunder

echo "install Xcodes"
brew install --cask xcodes

echo "install Notion"
brew install --cask notion

echo "install keka"
brew install --cask keka

echo "install Tencent Lemon"
brew install --cask tencent-lemon

echo "install GitHub Desktop"
brew install --cask github

# echo "install Chrome"
# brew install --cask google-chrome

echo "install fig"
brew install --cask fig

echo "install QQ"
brew install --cask qq

echo "install Wechat"
brew install --cask wechat

echo "install telegram"
brew install --cask telegram

echo "install ali driver"
brew install --cask adrive

echo "install flomo"
brew install --cask flomo

# echo "grammarly"
# brew install --cask grammarly

# echo "install figma"
# brew install --cask figma

# echo "install baidu netdisk"
# brew install --cask baidunetdisk





# Dev Tools

echo "install lookin"
brew install --cask lookin

echo "install monitorcontrol"
brew install --cask monitorcontrol

echo "install Visual Studio Code"
brew install --cask visual-studio-code

echo "install raycast"
brew install --cask raycast

echo "install periphery"
brew install peripheryapp/periphery/periphery

echo "install lookin"
brew install --cask lookin

echo "install SF Symbols"
brew install --cask sf-symbols

echo "install swiftformat-for-xcode"
brew install --cask swiftformat-for-xcode





# Command-line Tools

echo "install git"
brew install git

echo "install GitHub CLI"
brew install gh

echo "install swiftformat"
brew install swiftformat

# echo "install fzf"
# brew install fzf

# echo "install tmux"
# brew install tmux

echo "install tldr"
brew install tldr

# echo "install neovim"
# brew install neovim

echo "install ranger"
brew install ranger

# echo "install lazygit"
brew install lazygit





# 开始更新软件
echo "brew upgrade..."
brew upgrade

caskapp=`brew list --cask`
for app in $caskapp
do
echo "try upgrade" ${app}
brew upgrade --cask $app
done

echo "brew cleanup..."
brew cleanup
