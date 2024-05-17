#set node version
FROM node:18-alpine3.15 As production

# Define workdir
WORKDIR /usr/src/api

#Copying the content in the pastes
COPY . .
COPY ./.env.production ./.env

#Instal Dependencies
RUN npm install --quiet --no-optional --no-found --loglevel=error

# Build for production
RUN npm run build

# Running migrations
RUN npm run typeorm migration:show
RUN npm run typeorm migration:run

#Expose port 3000 from the API
EXPOSE 3000

#Run the API
CMD ["npm","run","start:prod"]