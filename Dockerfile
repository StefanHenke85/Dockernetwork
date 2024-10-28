FROM node:latest

WORKDIR /app

COPY package*.json . 

RUN npm install && npm install -g nodemon  # Installiert nodemon global

COPY . .

EXPOSE 4000

CMD ["nodemon", "--legacy-watch", "app.js"]
