FROM nginx
RUN apt update && apt install wget -y
RUN wget https://raw.githubusercontent.com/dkumarkaran/jenkins-cloudrun-demo/main/index.html
RUN wget https://raw.githubusercontent.com/dkumarkaran/jenkins-cloudrun-demo/main/test.html
RUN rm -rf /usr/share/nginx/html/*.html
RUN cp index.html /usr/share/nginx/html/
RUN cp test.html /usr/share/nginx/html/
