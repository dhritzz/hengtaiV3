#!/bin/bash
echo "[i] We will now uninstall hengtai..."
echo "[i] This will delete all backups."
sudo rm -i /usr/bin/rst
sudo rm -rf -i /usr/share/hengtai

echo "[i] hengtai sucessfully uninstalled."
exit 0
