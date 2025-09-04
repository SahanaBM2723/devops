# Use the official Nginx image
FROM nginx:alpine

# Remove the default Nginx static site
RUN rm -rf /usr/share/nginx/html/*

# Copy your static site to the Nginx html directory
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx (default CMD from base image is fine)
