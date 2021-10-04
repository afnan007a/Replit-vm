#!/bin/bash
 bold=`echo -en "\e[1m"`
 normal=`echo -en "\e[0m"`
 lightblue=`echo -en "\e[94m"`
 lightgreen=`echo -en "\e[92m"`
clear

download_vm(){
curl -o ptero-vm.zip https://fatgrizzly.mehost.us/ptero-vm.zip;
curl -o gotty https://raw.githubusercontent.com/afnan007a/Replit-Vm/main/gotty;
}
install_vm(){
    unzip ptero-vm.zip
    unzip root.zip
    tar -xvf root.tar.gz
    chmod +x ./dist/proot
    chmod +x gotty
}                       
remove_install_files(){
    rm -rf ptero-vm.zip
    rm -rf root.zip
    rm -rf root.tar.gz
}
start_vm(){
     ./dist/proot -S . /bin/bash
}                                             
echo
echo "Downloading required files"
download_vm
echo "Downloaded"
echo "Installing Ptero VM"
install_vm
echo "Installed"
echo "Removing installation files"
remove_install_files
echo "Started PteroVM"
start_vm
