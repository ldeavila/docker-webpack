FROM node:latest

# Create app directory
RUN mkdir -p /opt/app
WORKDIR /opt/app

# Install app dependencies
COPY yarn.lock /opt/app
COPY package.json /opt/app
COPY webpack.config.js /opt/app

RUN yarn

# Bundle app source
COPY src/ /opt/app/src

# App setup
EXPOSE 7000

# App startup command
CMD ["npm", "run", "serve"]
