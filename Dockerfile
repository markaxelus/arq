FROM node:20-alpine

# Install build dependencies for native modules like better-sqlite3
RUN apk add --no-cache python3 make g++

# Enable corepack for pnpm
RUN corepack enable

WORKDIR /app
