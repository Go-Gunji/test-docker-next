FROM node:16.17.0
WORKDIR /usr/src/app
COPY package.json ./
COPY package-lock.json ./
COPY tsconfig.json ./
RUN npm ci
COPY . .
ENTRYPOINT sh -c "npm run dev"