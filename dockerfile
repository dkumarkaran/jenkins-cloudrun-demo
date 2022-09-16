FROM nginx
RUN rm -rf /usr/share/nginx/html
COPY index.html /usr/share/nginx/html/index.html
