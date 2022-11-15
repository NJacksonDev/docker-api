# start from alpine linux wth Node 16 installed
FROM node:16-alpine3.15

# create a working dir and copy all files except those in docker ignore
WORKDIR /src/
COPY . .

COPY . .

#install our dependencies
RUN npm install

# set environmental variables
ENV PORT=3000

#open up port
EXPOSE 3000

# this is the command to run whenever we start a new container
CMD ["npm", "start"]