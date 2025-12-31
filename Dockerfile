 # Use a lightweight web server
FROM nginx:alpine

# Remove default nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy website files to nginx directory
COPY . /usr/share/nginx/html/

# Expose port 80 inside the container
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]

