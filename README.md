Inception  
System Administration Project - 42  
Advanced use of Docker in a virtual machine.

🎯 Objective  
Create a complete Docker infrastructure in a personal virtual machine, made up of multiple containers (NGINX, WordPress, MariaDB...) manually configured using Dockerfiles, docker-compose.yml, volumes, networks, etc.

📦 Infrastructure Contents  
✅ NGINX (TLSv1.2 or TLSv1.3 only, port 443)

✅ WordPress (with php-fpm, without nginx)

✅ MariaDB (without nginx)

✅ 2 Volumes:

/home/login/data/db: WordPress database

/home/login/data/wp: WordPress site files

✅ Dedicated Docker network (using --link, links:, or network: host is forbidden)

✅ Automatic container restart in case of crash

✅ Domain name configured as login.42.fr (e.g., wil.42.fr)

✅ .env file to store environment variables

✅ Security: no plain-text passwords or hardcoded values in Dockerfiles

⚙️ Technical Constraints  
🔨 Handwritten Dockerfiles for each service

🛠️ Makefile at the root to build images via docker-compose.yml

🐧 Based on the latest stable version - 1 of Alpine/Debian

⛔ Tag 'latest' is forbidden

📁 Strict project organization:

.
├── Makefile
├── secrets/
│   ├── credentials.txt
│   └── db_password.txt
├── srcs/
│   ├── .env
│   ├── docker-compose.yml
│   └── requirements/
│       ├── mariadb/
│       │   ├── Dockerfile
│       │   └── tools/
│       ├── nginx/
│       │   ├── Dockerfile
│       │   └── conf/
│       └── wordpress/
│           ├── Dockerfile
│           └── tools/

📌 Best Practices  
Use a clean entrypoint (no sleep, tail -f, bash, while true)

Use PID 1 correctly (no infinite loops)

Docker secrets recommended to store sensitive info

Environment variables are mandatory (username, password, domain, etc.)

The WordPress admin username must not contain 'admin'

🧠 Possible Bonuses (only if the mandatory part is perfect)  
 Redis cache for WordPress

 FTP server pointing to the WordPress volume

 Static site (non-PHP)

 Adminer

 Useful service of your choice (must be justifiable)

📤 Submission & Evaluation  
Submit via the intranet

Peer evaluation

Clean, readable, and well-organized code

Secrets and sensitive files must be ignored via .gitignore
