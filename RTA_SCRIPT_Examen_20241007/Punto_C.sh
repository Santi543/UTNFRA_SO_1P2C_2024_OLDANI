#!/bin/bash

HASH=$(sudo cat /etc/shadow | grep $(whoami) | awk -F ':' '{ print $2 }')

sudo groupadd p1c2_2024_gAlumno
sudo useradd -m -s /bin/bash -p $HASH -G p1c2_2024_gAlumno p1c2_2024_A1
sudo useradd -m -s /bin/bash -p $HASH -G p1c2_2024_gAlumno p1c2_2024_A2
sudo useradd -m -s /bin/bash -p $HASH -G p1c2_2024_gAlumno p1c2_2024_A3
sudo groupadd p1c2_2024_gProfesores
sudo useradd -m -s /bin/bash -p $HASH -G p1c2_2024_gProfesores p1c2_2024_P1

sudo chown p1c2_2024_A1:p1c2_2024_A1 -R /Examenes-UTN/alumno_1
sudo chown p1c2_2024_A2:p1c2_2024_A2 -R /Examenes-UTN/alumno_2
sudo chown p1c2_2024_A3:p1c2_2024_A3 -R /Examenes-UTN/alumno_3
sudo chown p1c2_2024_P1:p1c2_2024_gProfesores -R /Examenes-UTN/profesores

sudo chmod 750 /Examenes-UTN/alumno_1
sudo chmod 760 /Examenes-UTN/alumno_2
sudo chmod 700 /Examenes-UTN/alumno_3
sudo chmod 775 /Examenes-UTN/profesores

sudo su -c "whoami > /Examenes-UTN/alumno_1/validar.txt" p1c2_2024_A1
sudo su -c "whoami > /Examenes-UTN/alumno_2/validar.txt" p1c2_2024_A2
sudo su -c "whoami > /Examenes-UTN/alumno_3/validar.txt" p1c2_2024_A3
sudo su -c "whoami > /Examenes-UTN/profesores/validar.txt" p1c2_2024_P1


