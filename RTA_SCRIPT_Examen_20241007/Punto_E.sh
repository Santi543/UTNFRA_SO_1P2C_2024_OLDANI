#!/bin/bash

echo "Generando archivo con la memoria total de la ram y el fabricante del chassis..."

touch ~/repogit/UTNFRA_SO_1P2C_2024_OLDANI/RTA_ARCHIVOS_Examen_20241007/Filtro_Basico.txt

sudo cat /proc/meminfo | grep MemTotal >> ~/repogit/UTNFRA_SO_1P2C_2024_OLDANI/RTA_ARCHIVOS_Examen_20241007/Filtro_Basico.txt

echo "Chassis Information" >> ~/repogit/UTNFRA_SO_1P2C_2024_OLDANI/RTA_ARCHIVOS_Examen_20241007/Filtro_Basico.txt

sudo dmidecode -t chassis | grep Manufacturer >> ~/repogit/UTNFRA_SO_1P2C_2024_OLDANI/RTA_ARCHIVOS_Examen_20241007/Filtro_Basico.txt

