## Use the pre-built NGINX WAF image as the base
FROM codepromax24/nginx-waf

# Set working directory
WORKDIR /var/www/html

# Download and install WordPress
RUN curl -o /tmp/wordpress.tar.gz https://wordpress.org/latest.tar.gz && \
    tar -xzvf /tmp/wordpress.tar.gz -C /var/www/html && \
    mv /var/www/html/wordpress /var/www/project && \
    chown -R www-data:www-data /var/www/project && \
    chmod -R 755 /var/www/project && \
    rm -rf /tmp/wordpress.tar.gz

# Expose port 80 for HTTP traffic
EXPOSE 80
