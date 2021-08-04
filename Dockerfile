FROM eventxtra/dinghy-http-proxy:latest

# Copy our new template
COPY nginx.tmpl /app/

# Copy the SSL certificates
RUN mkdir -p /etc/nginx/certs/
COPY default.key default.crt /etc/nginx/certs/
