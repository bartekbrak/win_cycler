# Check if ~/bin exists and prompt user to create it if not

INSTALL_DIR=~/bin

if [ ! -d "$INSTALL_DIR" ]; then
    read -p "The $INSTALL_DIR directory does not exist. win_cycler wants to install there. Would you like to create it? " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]
    then
        mkdir $INSTALL_DIR
    fi
fi

wget -q https://raw.githubusercontent.com/bartekbrak/win_cycler/master/win_cycler?t=$(date +%s) -O $INSTALL_DIR/win_cycler
chmod +x $INSTALL_DIR/win_cycler
echo "win_cycler installed to $INSTALL_DIR"
