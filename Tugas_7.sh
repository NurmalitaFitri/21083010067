#Deklarasikan fungsi
panjang() {
       echo "Masukkan Panjang : "
       read length
}

lebar() {
     echo "Masukkan Lebar : "
     read width
}

luas() {
    panjang
    lebar
    let width=$length*$width
    echo "Luas Persegi :
$width"
}

#Memanggil fungsi
luas
