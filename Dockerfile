FROM codekitchen/dinghy-http-proxy:2.2.0
MAINTAINER Benjamin Porter <BenjaminPorter86@gmail.com>

# Copy our new template
COPY nginx.tmpl /app/

# Copy the SSL certificates
RUN mkdir -p /etc/nginx/certs/
COPY default.key default.crt /etc/nginx/certs/
