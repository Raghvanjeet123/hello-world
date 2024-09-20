# Use the official Node.js image from Docker Hub
FROM node:18-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the package.json and package-lock.json (if available)
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the application port (e.g., 3000 if your app runs on that port)
EXPOSE 3000

# Start the application using the command defined in package.json (npm start will run "start": "node index.js")
CMD ["npm", "start"]

