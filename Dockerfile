FROM node:6.11.1

WORKDIR /usr/src/app

# moving the package .json dependencies so the dependencies are installed in the containers
# we're copying to the working directory so put it as ./
COPY package*.json ./


RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm","start"]