# Pull base image
FROM node:22-bullseye-slim

# Setting work directory
WORKDIR /code

# Install dependencies
COPY ./package*.json /code/
RUN npm install

# Copy project
COPY . .