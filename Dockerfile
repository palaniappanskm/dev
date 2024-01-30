# Use official Node.js LTS version as the base image
FROM node:14-alpine

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy the rest of the application files
COPY . .

# Build the React app
RUN npm run build

# Expose port 80
EXPOSE 80

# Command to run the application
CMD ["npm", "start"]

