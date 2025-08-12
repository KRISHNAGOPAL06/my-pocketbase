FROM alpine:latest

# Install dependencies
RUN apk add --no-cache unzip

# Set working directory
WORKDIR /pb

# Copy PocketBase binary into container
COPY pocketbase /pb/pocketbase


# Make it executable
RUN chmod +x /pb/pocketbase

# Expose port 8080
EXPOSE 8080

# Run PocketBase
CMD ["/pb/pocketbase", "serve", "--http", "0.0.0.0:8080"]
