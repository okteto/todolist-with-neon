# Use an official Node.js runtime as the base image
FROM node:20 as dev

# Install 
RUN npm i -g neonctl nodemon node-jq

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install app dependencies
RUN npm install


FROM node:20 as prod
WORKDIR /app
COPY --from=dev /app/node_modules /app/node_modules
 
# Copy the rest of the application code
COPY . .

# Expose the application port
EXPOSE 5050

# Run the backend server
CMD [ "node", "index.js" ]