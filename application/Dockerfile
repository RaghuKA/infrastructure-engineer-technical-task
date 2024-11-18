# Use an official Node.js image as a base image
FROM node:23-alpine AS build

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the container
COPY package*.json .

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Compile TypeScript to JavaScript
RUN npm run build
CMD ["node", "build/index.js"]