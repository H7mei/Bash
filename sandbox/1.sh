echo "hello world"

sleep 3

echo "hii"

sleep 2

echo {1..10}    # satu sampe 10
echo {1..10..2} # selain kelipatan dua
echo {1..10..3} # selain kelipatan tiga
echo {A..Z}     # A sampai Z kapital
echo {a..Z}     # a kecil ke Z kapital
echo {A..z}     # full kapital dan alfabet
echo {w..d..2}  # costum

sleep 2

echo "done"

# copy and file

# 1> untuk menangkap apabila berhasil
# 2> untuk menangkap apabila gagal
# &> untuk menagkap keduanya

# grep mencari file

# grep <query> <filenya> | awk memfilter
grep echo 2.sh | awk {'print $1'}

# Bash script syntax

#! /bin/bash "shebang"