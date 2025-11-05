# 1. Use a lightweight Nginx image as the base
# "alpine-slim" is a minimal, secure version of Linux
FROM nginx:1.25-alpine-slim

# 2. Copy your static files into the Nginx web root folder
# The default folder Nginx serves files from is /usr/share/nginx/html
COPY index.html /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/

# 3. Tell Docker which port the container listens on
# This is just for documentation; Nginx listens on port 80 by default
EXPOSE 80

# 4. The command to start Nginx when the container runs
# This runs Nginx in the foreground, which is required for Docker containers
CMD ["nginx", "-g", "daemon off;"]
