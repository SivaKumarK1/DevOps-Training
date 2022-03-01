FROM nginx:latest
ARG ENVIRONMENT
# RUN apt-get update
# RUN apt-get install -y nano
COPY test/nginx/nginx.conf  /etc/nginx/
COPY test/nginx/default.conf /etc/nginx/conf.d/
RUN echo "upstream php-upstream { server phpdev:9000; }" > /etc/nginx/conf.d/upstream.conf
