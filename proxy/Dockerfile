FROM nginx:1.19-alpine

COPY web.conf /etc/nginx/conf.d/web.conf
# COPY ./docker-entrypoint.sh /etc/nginx/conf.d/docker-entrypoint.sh
# RUN chmod +x /etc/nginx/conf.d/docker-entrypoint.sh
# ENTRYPOINT [ "/etc/nginx/conf.d/docker-entrypoint.sh" ]

EXPOSE 80
CMD [ "nginx", "-g", "daemon off:" ]