FROM nginx:alpine
COPY . /usr/share/ngix/html
EXPOSE 80
