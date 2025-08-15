FROM alpine:latest
WORKDIR /app
COPY pocketbase /app/pocketbase
RUN chmod +x /app/pocketbase
CMD ["./pocketbase", "serve", "--http=0.0.0.0:10000"]
