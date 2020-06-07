FROM nginx:1.19-alpine

COPY nginx.conf /etc/nginx/nginx.conf
COPY docker-entrypoint.sh /
ENTRYPOINT [ "/docker-entrypoint.sh" ]

EXPOSE 80
CMD [ "nginx", "-g", "daemon off:" ]