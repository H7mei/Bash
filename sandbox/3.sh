#!/bash/bin
#variabel

a=hello
b="Good Morning"
c=16

echo $a
echo $b
echo $c 

echo $b! I have $c apples.

# Adding special attr to variables
declare -i d=121       # d integer
declare -r e=211       # e read-only (const)
declare -l f="LOLCats" # l is to lowecase
declare -u g="LOLCats" # u is to uppercase

# built-in variables
echo $HOME         # return home dir
echo $PWD          # return current dir
echo $MACHTYPE     # return tipe mesin
echo $HOSTNAME     # return system name
echo $BASH_VERSION # return bash version
echo $SECONDS      # return bash session has run (timing)
echo $0            # return nama script

# and more build-in variabel 
