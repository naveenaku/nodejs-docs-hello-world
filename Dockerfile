FROM node:18-alpine

WORKDIR /app

# Copy package files first for caching
COPY package*.json ./

# Install all dependencies (dev + prod) — fine for sample/dev
RUN npm install

# Copy app source
COPY . .

# Default PORT inside container 
ENV PORT=3000
EXPOSE 3000

# Start the app 
CMD ["node", "index.js"]

