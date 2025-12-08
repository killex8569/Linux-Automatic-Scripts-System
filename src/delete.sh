#!/bin/bash
set -euo pipefail

delete_lsas(){
    rm -rf /opt/lsas || echo "Warning : Uninstalling lsas is not possible now"
}

