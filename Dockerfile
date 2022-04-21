FROM node:alpine

MAINTAINER "ninad@gmail.com"

HEALTHCHECK --interval=5s --timeout=5s CMD curl -f http://127.0.0.1:8000 |  1

WORKDIR /app
COPY  index.html /app/

RUN ["npm","install"]
#CMD ["npm", "start"]

#EXPOSE 8000
