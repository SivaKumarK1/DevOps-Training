FROM nginx:latest
ARG ENVIRONMENT
# RUN apt-get update
# RUN apt-get install -y nano
COPY nginx.conf  /etc/nginx/
COPY default.conf /etc/nginx/conf.d/
RUN echo "upstream php-upstream { server php-test:9000; }" > /etc/nginx/conf.d/upstream.conf
