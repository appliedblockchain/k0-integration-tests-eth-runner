FROM node:10

WORKDIR /tests

RUN curl -LO https://github.com/ethereum/solidity/releases/download/v0.5.3/solc-static-linux && chmod +x solc-static-linux && mv solc-static-linux /usr/bin/solc

COPY package.json .

RUN npm i

COPY . .

ENTRYPOINT ["npm", "test"]
