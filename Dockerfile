FROM node:8.11.4

RUN mkdir /app

WORKDIR /app

COPY package.json .

RUN npm install

COPY src src
COPY public public

#CMD ["tail", "-f", "/dev/null"]

EXPOSE 3000

CMD ["npm", "start"]
