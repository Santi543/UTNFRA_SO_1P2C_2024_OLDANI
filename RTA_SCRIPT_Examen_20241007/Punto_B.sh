#!/bin/bash

echo "Comenzando la particion..."

DISCO=$(sudo fdisk -l | grep "10 GiB" | awk '{print $2}' | awk -F ':' '{print $1}')

sudo fdisk $DISCO << EOF
n
p
1

+100M
n
p
2

+100M
n
p
3

+100M
n
e
4


n

+100M

n

+100M

n

+100M

n

+100M

n

+100M

n

+100M

n

+100M

w
EOF
echo "Mostrando las particiones:"
echo
sudo fdisk -l $DISCO

for i in {1..3} ; do
	sudo mkfs.ext4 "${DISCO}${i}"
done

for i in {5..11} ; do
        sudo mkfs.ext4 "${DISCO}${i}"
done

sudo mount ${DISCO}1 /Examenes-UTN/alumno_1/parcial_1
sudo mount ${DISCO}2 /Examenes-UTN/alumno_1/parcial_2
sudo mount ${DISCO}3 /Examenes-UTN/alumno_1/parcial_3
sudo mount ${DISCO}5 /Examenes-UTN/alumno_2/parcial_1
sudo mount ${DISCO}6 /Examenes-UTN/alumno_2/parcial_2
sudo mount ${DISCO}7 /Examenes-UTN/alumno_2/parcial_3
sudo mount ${DISCO}8 /Examenes-UTN/alumno_3/parcial_1
sudo mount ${DISCO}9 /Examenes-UTN/alumno_3/parcial_2
sudo mount ${DISCO}10 /Examenes-UTN/alumno_3/parcial_3
sudo mount ${DISCO}11 /Examenes-UTN/profesores
