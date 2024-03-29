FROM node:12-alpine
EXPOSE 3000
ENV PORT 3000
ENV NODE_ENV production
WORKDIR /app
COPY package*.json ./
RUN npm install --only=prod
COPY . .
USER 1001
CMD ["npm", "start"]