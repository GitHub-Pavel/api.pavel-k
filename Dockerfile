FROM golang:1.24.2 AS builder

RUN apt-get update && apt-get install -y make

WORKDIR /app

COPY go.mod go.sum ./
RUN go mod download

COPY . .

RUN make build

FROM debian:bullseye-slim

WORKDIR /app

COPY --from=builder /app/bin/app .

EXPOSE 8080

CMD ["./app"]