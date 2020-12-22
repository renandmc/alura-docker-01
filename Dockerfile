FROM node:latest
ENV NODE_ENV=production
ENV PORT=3000
COPY . /var/www
WORKDIR /var/www
RUN npm install
# ENTRYPOINT [ "npm", "start" ] tem o mesmo efeito
ENTRYPOINT npm start
EXPOSE $PORT