# Use Node Image Config
FROM node:7-onbuild

# maintainer email Config
LABEL maintainer "manonair20@gmail.com"

# health check Config
HEALTHCHECK --interval=5s \
            --timeout=5s \
            CMD curl -f http://127.0.0.1:8000 || exit 1

# docker port to expose Config
EXPOSE 8000
