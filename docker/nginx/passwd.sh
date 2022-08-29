#!/bin/sh
if [ ! -z "$username" ]; then
    printf "Generate apache passwords"
    echo -n $username: > /etc/nginx/.htpasswd
    openssl passwd -apr1 $password >> /etc/nginx/.htpasswd
else
    printf "No username/password set. If you want to set please use environment vars:\n"
    printf "Key	Value \n \tusername	yourUserNameGoesHere \n \tpassword	yourPasswordGoesHere\n"

    sed -i '/auth_basic_user_file \/etc\/nginx\/.htpasswd;/d' /etc/nginx/conf.d/default.conf
    sed -i '/auth_basic_user_file \/etc\/nginx\/.htpasswd;/d' /etc/nginx/conf.d/default-ssl.conf
fi
