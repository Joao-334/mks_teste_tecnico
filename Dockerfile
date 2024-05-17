#set node version
FROM node:18-alpine3.15 As production

# Define workdir
WORKDIR /usr/src/api

#Copy pastas and rename .env
COPY . .
COPY ./.env.production ./.env

#Instal Dependencies
RUN npm install --quiet --no-optional --no-found --loglevel=error

# Buil for production
RUN npm run build

EXPOSE 3000

#Run the API
CMD ["npm","run","start:prod"]