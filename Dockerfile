# Use an official Node.js runtime as a parent image
FROM node:8.17.0

# Set the working directory to /app
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Expose port 3000
EXPOSE 8082

# Start the application
CMD [ "npm", "start" ]