# --- Stage 1: Build ---
FROM golang:1.23-alpine AS builder

# Install dependencies
RUN apk add --no-cache git

# Set working directory
WORKDIR /app

# Download dependencies
RUN go install -tags 'postgres' github.com/golang-migrate/migrate/v4/cmd/migrate@v4.18.2

# --- Stage 2: Runtime ---
FROM alpine:latest

# Copy built binary from the builder stage
COPY --from=builder /go/bin/migrate /usr/local/bin/migrate

# Set entrypoint
ENTRYPOINT ["migrate"]
CMD ["--help"]
