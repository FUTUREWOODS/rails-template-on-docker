FROM nginx:1.19-alpine

COPY nginx.conf /etc/nginx/nginx.conf
COPY ./docker-entrypoint.sh /etc/nginx/docker-entrypoint.sh
RUN chmod +x /etc/nginx/docker-entrypoint.sh
ENTRYPOINT [ "/etc/nginx/docker-entrypoint.sh" ]

EXPOSE 80
CMD [ "nginx", "-g", "daemon off:" ]