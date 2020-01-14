#/bin/sh

function install() {
    cd "$(dirname "$0")"

    mkdir -p ~/.ssh
    mkdir -p ~/.stack
    mkdir -p ~/.vim/includes
    
    cp ./.bash_profile            ~/
    cp ./.bashrc                  ~/
    cp ./.gitconfig               ~/
    cp ./.haskell-ide-engine.json ~/
    cp ./.solargraph.yml          ~/
    cp ./.ssh/id_rsa.pub          ~/.ssh/id_rsa.pub
    cp ./.stack/config.yaml       ~/.stack/config.yaml
    cp ./.vim/includes/*          ~/.vim/includes/
    cp ./.vimrc                   ~/
}

function backup() {
    rm -rf ./backup

    mkdir -p ./backup
    mkdir -p ./backup/.ssh
    mkdir -p ./backup/.stack
    mkdir -p ./backup/.vim/includes

    cp ~/.bash_profile            ./backup
    cp ~/.bashrc                  ./backup
    cp ~/.gitconfig               ./backup
    cp ~/.haskell-ide-engine.json ./backup
    cp ~/.solargraph.yml          ./backup
    cp ~/.ssh/id_rsa.pub          ./backup/.ssh/id_rsa.pub
    cp ~/.stack/config.yaml       ./backup/.stack/config.yaml
    cp ~/.vim/includes/*          ./backup/.vim/includes/
    cp ~/.vimrc                   ./backup

    mv ./backup "$(date +%Y-%m-%d.%H:%M:%S).backup"
}

if [ "$#" == "0" ]; then
    install
elif [ "$#" == "1" ] && [ "$1" == "backup" ]; then
    backup
else
    echo "Usage: ./install"
    echo "       ./install backup"
fi
