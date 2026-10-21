# Sito statico servito da nginx. Railway imposta $PORT: nginx lo legge dal template.
FROM nginx:1.27-alpine
ENV PORT=8080
COPY nginx.conf.template /etc/nginx/templates/default.conf.template
COPY index.html style.css /usr/share/nginx/html/
COPY assets /usr/share/nginx/html/assets
EXPOSE 8080
