#!/bin/bash

# Mendeklarasikan fungsi
nama() {
    echo "Siapa namamu?"
    read nama
}
npm() {
   echo "Sebutkan npm"
   read npm
   echo -e "Hai $nama dengan npm $npm, Selamat datang \n di praktikum Sistem Operasi. Good Luck!"
}

#Memanggil fungsi
nama
npm
