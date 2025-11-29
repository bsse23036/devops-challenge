# Use Nginx (standard for static sites)
FROM nginx:alpine

# Copy your static files to Nginx folder
COPY ./app /usr/share/nginx/html

# Expose port 80
EXPOSE 80