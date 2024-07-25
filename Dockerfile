FROM node


WORKDIR /home/node/app

COPY package*.json ./


RUN npm install

COPY . .

EXPOSE 3000

# Define environment variable
ENV PORT 3000

CMD ["npm", "run", "start-dev"]

HEALTHCHECK --interval=5s --timeout=3s --start-period=30s --retries=3 \
  CMD curl -f http://localhost:${PORT:-3000}/health || exit 1

  