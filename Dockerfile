# syntax=docker/dockerfile:1

# Stage 1: Build the Angular application
FROM node:22.13.1-slim AS builder

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json for dependency installation
COPY --link package.json package-lock.json ./

# Install dependencies
RUN --mount=type=cache,target=/root/.npm npm ci

# Copy the application source code
COPY --link . .

# Build the Angular application
RUN npm run build -- --output-path=dist/abhitnew

# Stage 2: Serve the Angular application using a lightweight web server
FROM nginx:stable-alpine AS final

# Copy the built application from the builder stage
COPY --from=builder /app/dist/abhitnew /usr/share/nginx/html

# Expose the default Nginx port
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]