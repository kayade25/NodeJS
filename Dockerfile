# Use an official Node.js Alpine runtime as the base image
FROM node:16.20.1-alpine

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy all project files to the working directory
COPY . .

# Install app dependencies
RUN npm install

# Expose port 5001
EXPOSE 5001

# Command to run the Node.js application
CMD ["node", "app.js"]

