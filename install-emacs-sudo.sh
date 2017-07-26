#enable source repositories first for emacs24
xviewer software-sources.png

apt-get -y build-dep emacs24

# build-essential for general software building.
# autoconf to build configure files.
# texinfo for makeinfo files.
# checkinstall to build installation packages from make.
apt-get -y install build-essential autoconf texinfo checkinstall
