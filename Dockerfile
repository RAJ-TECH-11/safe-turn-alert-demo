# Use Nginx as a web server to serve the static HTML
FROM nginx:alpine

# Remove default Nginx HTML content
RUN rm -rf /usr/share/nginx/html/*

# Copy your static files (index.html, CSS, JS, etc.) to the Nginx folder
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
