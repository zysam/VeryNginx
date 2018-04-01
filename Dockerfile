FROM openresty/openresty:alpine

# RUN groupadd -r nginx && useradd -r -g nginx nginx
COPY nginx.conf /usr/local/openresty/nginx/conf/
COPY ./verynginx /opt/verynginx/verynginx

EXPOSE 80
VOLUME [ "/www" ]
VOLUME [ "/opt/verynginx/verynginx/configs" ]


# CMD ["/opt/verynginx/openresty/nginx/sbin/nginx", "-g", "daemon off; error_log /dev/stderr info;"]
