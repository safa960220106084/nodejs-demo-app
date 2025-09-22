# Use an official Node.js runtime as the base image
FROM node:16

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the package.json and package-lock.json (if available)
# This allows Docker to cache dependencies layer for faster rebuilds
COPY package*.json ./

# Install the app dependencies
RUN npm install

# Copy the rest of the application code into the container
COPY . .

# Expose the port the app will run on
EXPOSE 3000

# Command to run the app
CMD ["node", "app.js"]
