# FROM nginx
# COPY build /usr/share/nginx/html


# Use an official Node.js runtime as a base image
FROM node:14-alpine

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the entire application to the working directory
COPY . .

# Build the application
RUN npm run build

# Expose the port that your app will run on
EXPOSE 3000

# Command to run your application
CMD ["npm", "start"]