#!/bin/bash
echo "[i] We will now install hengtai to your bin path..."
if [ -d "/usr/share/hengtai" ] ; then
    echo "[i] Found an old version of hengtai, proceeding to update..."
    echo "[i] Backing up old verison."
    if [ -d "/usr/share/hengtai/Backup" ] ; then
        sudo mv /usr/share/hengtai/Backup ./Backup
    else
        mkdir ./Backup
    fi
    name="./Backup/hengtai"
    if [ -d $name ] ; then
        i=0
        while [ -d "$name.bak$i" ] ; do
            let i++
        done
            name="$name.bak$i"
    fi
    sudo mv /usr/share/hengtai $name
    mv ./Backup ./hengtai/
    sudo cp -ar ./hengtai /usr/share/
    echo "[i] Installation sucessful."
    echo "[i] Making hengtai executable..."
    sudo mv /usr/share/hengtai/main.py /usr/share/hengtai/rst
    sudo chmod +x /usr/share/hengtai/rst
    sudo ln -s /usr/share/hengtai/rst /usr/bin/rst || echo "[i] Link already seems to exist."
else
    sudo cp -ar ./hengtai /usr/share/
    echo "[i] Installation sucessful."
    echo "[i] Making hengtai executable..."
    sudo mv /usr/share/hengtai/main.py /usr/share/hengtai/rst
    sudo chmod +x /usr/share/hengtai/rst
    sudo ln -s /usr/share/hengtai/rst /usr/bin/rst || echo "[i] Link already seems to exist."
fi

echo "[i] You can delete the hengtaifolder now."
echo "----------------------------------------"
echo "[i] Run 'sudo rst' to start hengtai.    "
echo "----------------------------------------"
exit 0
