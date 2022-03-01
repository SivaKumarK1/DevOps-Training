FROM nginx:latest
ARG ENVIRONMENT
# RUN apt-get update
# RUN apt-get install -y nano
COPY docker/nginx/nginx.conf  /etc/nginx/
COPY docker/nginx/test/default.conf /etc/nginx/conf.d/
RUN echo "upstream php-upstream { server phptest:9000; }" > /etc/nginx/conf.d/upstream.conf
