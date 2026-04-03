FROM nginx:1.27-alpine

# Remove default nginx static files
RUN rm -rf /usr/share/nginx/html/*

# Copy website files into nginx web root
COPY index.html /usr/share/nginx/html/
COPY photos.html /usr/share/nginx/html/
COPY faq.html /usr/share/nginx/html/
COPY registration.html /usr/share/nginx/html/
COPY styles.css /usr/share/nginx/html/
COPY images/ /usr/share/nginx/html/images/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
