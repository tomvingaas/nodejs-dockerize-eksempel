FROM node:14
# app dir
WORKDIR /urs/src/app
#installer avhengigheter
# * er whildcard for å få copiert både package.json og package-lock.json til WORKDIR
COPY package*.json ./
#bygg applikasjonen
RUN npm install
#pakk filene som er blitt laget
COPY . .
#gjør port 8080 tilgjengelig utenfor container
EXPOSE 8080
#kjør server.js
CMD ["node", "server.js"]
