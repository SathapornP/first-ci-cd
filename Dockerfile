FROM nginx:alpine
LABEL org.opencontainers.image.source https://github.com/SathapornP/first-ci-cd
COPY ./html /usr/share/nginx/html
# EXPOSE 10000:80
# VOLUME ./html /usr/share/nginx/html
