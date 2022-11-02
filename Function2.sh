#Deklarasi fungsi
function nama {
    echo "Siapa namamu?"
    read nama
}
function npm {
    echo "Sebutkan NPM"
    read npm
    echo -e "Hai $nama dengan NPM $npm, selamat datang \n di praktikum Sistem Operasi. Good Luck!"
}

#Memanggil fungsi
nama
npm

