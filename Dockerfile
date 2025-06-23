# 1. Build our product bundle 
FROM node:22-alpine AS build

WORKDIR /app

COPY package*.json ./

RUN npm ci

COPY . .

RUN npm run build

 


# 2.Serve the bundle with an HTTP server 
