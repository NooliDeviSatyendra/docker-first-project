# Use Node.js base image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy application file
COPY app.js .

# Install dependencies
RUN npm init -y && npm install express body-parser

# Expose application port
EXPOSE 3000

# Start application
CMD ["node", "app.js"]
