FROM nginx
RUN apt update && apt install wget -y
RUN cd /usr/share/nginx/html/ && rm -f *.html && wget https://raw.githubusercontent.com/dkumarkaran/jenkins-cloudrun-demo/main/index.html
