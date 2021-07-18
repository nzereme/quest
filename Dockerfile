FROM node:10

# Create app directory
WORKDIR /usr/src/app

# Copy all app files
COPY . .

# Declare environment variables needed by the application
ENV SECRET_WORD=TwelveFactor

# Expose port 3000
EXPOSE 3000

RUN npm install
CMD [ "npm", "start" ]