FROM debian:12 AS nodejs-my-website

RUN apt-get update -yq \
&& apt-get install curl gnupg -yq \
&& curl -sL https://deb.nodesource.com/setup_24.x | bash \
&& apt-get install nodejs -yq \
&& apt-get clean -y

COPY . /app/

WORKDIR /app

RUN npm install
RUN npm run build

EXPOSE 3000

ENTRYPOINT ["entrypoint.sh"]
CMD ["npm", "run", "start"]
 