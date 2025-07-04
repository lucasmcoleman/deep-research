FROM node:22-alpine

WORKDIR /app

COPY . .
COPY package.json ./

RUN apk update
RUN apk add build-base python3-dev libffi-dev openssl-dev py3-pip
RUN pip3 install magic-wormhole --break-system-packages
RUN npm install

CMD ["npm", "run", "docker"]
