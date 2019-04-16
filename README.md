# LAMP_docker
docker-based LAMP stack (Linux, Apache, MySQL, PHP) with phpmyadmin

![Lamp with docker](https://raw.githubusercontent.com/Benaddayoussef/LAMP_docker/master/lampwithdocker.jpg)

## Objective

Hosting web content in a linux environment.

## What is a LAMP stack?

A LAMP (Linux, Apache,MySQL,PHP) stack is free and open-source web stack used for hosting web content in a linux environment.

## What is Docker?

Docker is a container platform for applications. When ups can download pre-configured apps without the hassle of the installation and configuration process.

## How to use it ?

First install Docker in Your Machine From [Here](https://docs.docker.com/install/)

then Open Your terminal and type
```
docker run -it -v $PATH:/var/www/html -p 80:80 benaddayoussef/lampdocker:v2
```

**You replace $PATH with your working directory**

![runcontainer](https://raw.githubusercontent.com/Benaddayoussef/LAMP_docker/master/dockerruncontainer.jpeg)

after that you just type 
```
sh run.sh
```
![runapache](https://raw.githubusercontent.com/Benaddayoussef/LAMP_docker/master/runapache.jpeg)

to run script that start mysql and apache service 

Now just type localhost in your browser

![localhost](https://raw.githubusercontent.com/Benaddayoussef/LAMP_docker/master/website.jpeg)

the webserver works !

let's try php myadmin by typing localhost/phymyadmin

![phpmyadmin](https://raw.githubusercontent.com/Benaddayoussef/LAMP_docker/master/phpmyadmin.jpeg)

The username is **root** and the password is also **root**

![enterphpmyadmin](https://raw.githubusercontent.com/Benaddayoussef/LAMP_docker/master/phpmyadminworks.jpeg)

TADA!! phpmyadmin works without any problem

and finally to connect to mysql using your terminal your just type
```
mysql -u root -p
```
![connectmysqlfromterminal](https://raw.githubusercontent.com/Benaddayoussef/LAMP_docker/master/mysqlworksalso.jpeg)

By : Youssef ait bamouh
1337
