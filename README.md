# Win98-Docker




To run the Dockerfile, you'll need to follow these steps:

git clone https://github.com/mrkimoz/Win98-Docker.git
cd Win98-Docker
docker build -t win98-container .
docker run -d -p 5900:5900 --name win98-instance win98-container
