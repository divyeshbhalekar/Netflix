# Use an official Node.js runtime as the base image
FROM node:12

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose port 4000 to the outside world
EXPOSE 4000

# Command to run the application
CMD [ "npm", "start" ]
