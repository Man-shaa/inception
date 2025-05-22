# 🚀 Inception  
**System Administration Project - 42**  
Advanced use of Docker in a virtual machine.

---

## 🎯 Objective  
Create a complete Docker infrastructure inside a personal virtual machine.  
The setup is composed of multiple containers (NGINX, WordPress, MariaDB...), each manually configured using:

- Dockerfiles  
- docker-compose.yml
- Volumes  
- Networks  

---

## 📦 Infrastructure Overview  

- **NGINX**  
  - TLSv1.2 or TLSv1.3 only  
  - Exposes port 443  

- **WordPress**  
  - Uses PHP-FPM  

- **MariaDB**  

- **Volumes**  
  - `/home/msharifi/data/mysql`: database  
  - `/home/msharifi/data/wordpress`: wordpress  

---

## ✅ Key Features

- ✅ Dedicated Docker network
- ✅ Automatic container restart on crash
- ✅ Domain name configured as `msharifi.42.fr`
- ✅ `.env` file used for environment variables
- ✅ No plain-text passwords or credentials in Dockerfiles
- ✅ Handwritten Dockerfiles for each service
- ✅ Root-level `Makefile` to build and orchestrate everything via `docker-compose.yml`

---

## 📁 Project Structure


📁 project organization:

```.
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
```
