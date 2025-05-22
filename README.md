# Inception  
System Administration Project - 42  
Advanced use of Docker in a virtual machine.

## 🎯 Objective  
Create a complete Docker infrastructure in a personal virtual machine, made up of multiple containers (NGINX, WordPress, MariaDB...) manually configured using Dockerfiles, docker-compose.yml, volumes, networks, etc.

## 📦 Infrastructure Contents  
  NGINX (TLSv1.2 or TLSv1.3 only, port 443)

  WordPress (with php-fpm)

  MariaDB

2 Volumes:

- /home/msharifi/data/mysql: WordPress database

- /home/msharifi/data/wordpress: WordPress site files

## ✅ Features
Dedicated Docker network
Automatic container restart in case of crash
Domain name configured as msharifi.42.fr
.env file to store environment variables
Security: no plain-text passwords or hardcoded values in Dockerfiles
Handwritten Dockerfiles for each service
Makefile at the root to build images via docker-compose.yml

📁 project organization:

.
├── Makefile
├── srcs/
│   ├── .env
│   ├── docker-compose.yml
│   └── requirements/
│       ├── mariadb/
│       │   ├── Dockerfile
│       │   └── tools/
│       │   └── conf/
│       ├── nginx/
│       │   ├── Dockerfile
│       │   └── conf/
│       └── wordpress/
│           ├── Dockerfile
│           └── conf/
