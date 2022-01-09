# App Store
# - Xcode
# - Eudic
# - Magnet
# - PasteNow
# - Tencent Lemon Lite

echo "install brew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "brew update..."
brew update

echo "install zsh..."
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/KeithBird/nvim/.zshrc ~/.zshrc

chsh -s /bin/zsh

# brew install
echo "install git"
brew install git

echo "install neovim"
brew install neovim

echo "install fzf"
brew install fzf

echo "install tmux"
brew install tmux

echo "install tldr"
brew install tldr

echo "install Eudic"
brew install --cask eudic

echo "install IINA"
brew install --cask iina

echo "install Xcodes"
brew install --cask xcodes

echo "install Notion"
brew install --cask notion

echo "install Chrome"
brew install --cask google-chrome

echo "install swiftlint"
brew install swiftlint

echo "install cocoapods"
brew install cocoapods

echo "install periphery"
brew install peripheryapp/periphery/periphery

echo "install Tencent Lemon"
brew install --cask tencent-lemon

echo "install GitHub Desktop"
brew install --cask github

echo "install Visual Studio Code"
brew install --cask visual-studio-code

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