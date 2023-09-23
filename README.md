# Free Cricket API 🏏

![Score Test](https://github.com/sanwebinfo/cri-deploy/workflows/Score%20Test/badge.svg)  

Cricket API - Deploy Live Cricket Score API for free in Vercel and Docker.  

## About API 🌐

Learn More about the API Here - <https://github.com/sanwebinfo/cricket-api>

## Free Deploy 🍔

- Deploy on Vercel

[![Deploy with Vercel](https://vercel.com/button)](https://vercel.com/new/git/external?repository-url=https%3A%2F%2Fgithub.com%2Fsanwebinfo%2Fcri-deploy)  

## Docker 🐬

Keep Running the PHP API in Docker  

- Update the `.dockerfile` before build - Modify it according to your Needs
- on production server use apache or nginx as reverse proxy for this docker container  

### Built-in PHP localhost server for Testing

```sh
FROM php:8.1-cli-alpine
COPY . /var/www/html
WORKDIR /var/www/html
EXPOSE 6002
CMD ["php", "-S", "0.0.0.0:6002", "-t", "/var/www/html"]
```

### Production server using apache

```sh
FROM php:8.1-apache
COPY . /var/www/html
WORKDIR /var/www/html
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
```

### Commands for Setup Docker Container

```sh

## Build image
docker build . -t="cri-deploy"

## List the image
docker image ls

## Create and Test Container
docker run -d -p 6002:6002 --name cricket cri-deploy
docker container ps
docker stop (containerID)

## For apache
sudo docker run -d -p 6002:80 --name cricket cri-deploy

## Run the container forever (Localhost server)
docker run -d --restart=always -p 6002:6002 --name cricket cri-deploy

## Apache server
sudo docker run -d --restart=always -p 6002:80 --name cricket cri-deploy

## List Hidden container if error exists
docker ps -a

## other commands
docker logs (containerID)
docker logs --follow (containerID)
docker stop (containerID)
docker rm (containerid)
docker rmi (imageid)
docker image prune
docker builder prune --all -f
docker system prune --all
docker rm $(docker ps -all -q)
docker rmi $(docker image ls -q)
```

## Disclaimer 🗃

- This is not an Offical API from Cricbuzz - it's an Unofficial API
- This is for Education Purpose only - use at your own risk on Production Site

All Credits Goes to <https://www.cricbuzz.com/>

## LICENSE 📕

MIT
