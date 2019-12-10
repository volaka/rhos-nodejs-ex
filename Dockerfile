FROM node:12-alpine
ENV PORT 3000
ENV NODE_ENV production
WORKDIR /app
COPY package*.json ./
RUN npm install --only=prod
COPY . .
CMD ["npm", "start"]