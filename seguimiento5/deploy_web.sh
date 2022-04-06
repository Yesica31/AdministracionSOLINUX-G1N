#!/bin/bash

function main {
 install_epel_package
 deploy_nginx
 mover_script

}
function install_epel_package {
#sudo yum install epel-release -y
echo "instalando epel............."
}

function deploy_nginx {
 sudo yum install nginx -y
 sudo systemctl start nginx
 sudo systemctl enable nginx
}

function mover_script {
echo "Yesica Ortiz" > /usr/share/nginx/html/index.html
}

main
