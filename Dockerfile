# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory in the Docker container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json into the container
COPY package*.json ./

# Install the application's dependencies inside the Docker container
RUN npm install

# Copy the rest of the application into the container
COPY . .

# Expose port 8080 for the application
EXPOSE 8080

# Define the command that should be executed when the Docker container is run
CMD [ "node", "server.js" ]
