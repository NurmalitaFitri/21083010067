#Deklarasi fungsi
identitas() {
	parameter1=$1
	parameter2=$2
	parameter3=$3
	echo "$parameter1"
	echo "$parameter2"
	echo "$parameter3"
}

echo "Masukkan Nama : "
read nama
echo "Masukkan NPM : "
read npm
echo "Hobimu Apa : "
read hobi

printf "\n"
identitas $nama $npm $hobi
