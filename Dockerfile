# Stage 1: Build the Flutter web app
FROM node:18 as build
RUN apt-get update && apt-get install -y git
RUN git clone https://github.com/flutter/flutter.git /usr/local/flutter
ENV PATH="/usr/local/flutter/bin:/usr/local/flutter/bin/cache/dart-sdk/bin:${PATH}"
RUN flutter precache
WORKDIR /app
COPY . .
RUN flutter pub get
RUN flutter build web

# Stage 2: Serve the built web app with Nginx
FROM nginx:alpine
COPY --from=build /app/build/web /usr/share/nginx/html
