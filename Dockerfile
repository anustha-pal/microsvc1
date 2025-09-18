# Use Node.js official image
FROM node:18-alpine

# Create app directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install only production dependencies
RUN npm install --only=production

# Copy the rest of the app
COPY . .

# Expose port (same as app.js PORT)
EXPOSE 8080

# Run the app
CMD ["npm", "start"]

