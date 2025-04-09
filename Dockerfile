FROM node:19-alpine
WORKDIR /app
COPY . .
RUN yarn install --production && yarn cache clean
EXPOSE 3000
ENTRYPOINT ["node"]
CMD ["src/index.js"]

