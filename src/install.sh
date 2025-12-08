#!/bin/bash
set -euo pipefail

install_lsas(){
    mkdir -p /opt/lsas

    echo "Move fichiers et dossiers : "
    cp lsas.sh /opt/lsas || echo "Warning : lsas.sh not found"
    cp delete.sh /opt/lsas || echo "Warning : delete.sh"
    cp update.sh /opt/lsas || echo "Warning : update.sh not found"
    cp ASCII_lsas.txt /opt/lsas || echo "Warning : ASCII_lsas.txt"
}

install_lsas



