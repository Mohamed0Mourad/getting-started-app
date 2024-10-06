From node:18-alpine
Workdir /app
Copy . .
Run yarn install --production && yarn cache clean
Entrypoint ["node"]
Cmd ["src/index.js"]
Expose 3000