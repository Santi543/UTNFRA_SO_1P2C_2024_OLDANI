#!/bin/bash

IP=$(curl -s ifconfig.me)
GIT=$(git remote get-url origin)
url_repositorio=$(git -C "$HOME/repogit/UTNFRA_SO_1P2C_2024_OLDANI/" config --get remote.origin.url)
HASH=$(sudo cat /etc/shadow | grep $(whoami) | awk -F ':' '{ print $2 }')

cat <<EOF > ~/repogit/UTNFRA_SO_1P2C_2024_OLDANI/RTA_ARCHIVOS_Examen_20241007/Filtro_Avanzado.txt
Mi IP Publica es: $IP
Mi usuario es: $(whoami)
El Hash de mi Usuario es: $HASH
La URL de mi repositorio es: $url_repositorio
EOF
