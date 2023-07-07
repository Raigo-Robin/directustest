# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy index.js to the working directory
COPY index.js ./

# Expose the port your Directus application listens on (e.g., 8055)
EXPOSE 8055

# Specify the command to run your Directus application
CMD ["node", "index.js"]
