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



# brew install

echo "install Eudic"
brew install --cask eudic

echo "install IINA"
brew install --cask iina

echo "install thunder"
brew install --cask thunder

echo "install Xcodes"
brew install --cask xcodes

echo "install Notion"
brew install --cask notion

echo "keka"
brew install --cask keka

echo "install Tencent Lemon"
brew install --cask tencent-lemon

echo "install GitHub Desktop"
brew install --cask github

echo "install periphery"
brew install peripheryapp/periphery/periphery

echo "install SF Symbols"
brew install --cask sf-symbols

echo "install Chrome"
brew install --cask google-chrome

echo "install Visual Studio Code"
brew install --cask visual-studio-code



# echo "install QQ"
# brew install --cask qq

# echo "install Wechat"
# brew install --cask wechat

# echo "install telegram"
# brew install --cask telegram

# echo "install cocoapods"
# brew install cocoapods

# echo "grammarly"
# brew install --cask grammarly

# echo "install figma"
# brew install --cask figma

# echo "install alfred"
# brew install --cask alfred

# echo "install ali driver"
# brew install --cask adrive

# echo "install baidu netdisk"
# brew install --cask baidunetdisk

# echo "install baidu monitorcontrol"
brew install --cask monitorcontrol



# terminal

echo "install swiftlint"
brew install swiftlint

echo "install git"
brew install git

echo "install fzf"
brew install fzf

echo "install tmux"
brew install tmux

echo "install tldr"
brew install tldr

echo "install neovim"
brew install neovim

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
