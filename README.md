# API Pavel K.

This project is a Go-based application that sets up a development environment using Docker Compose. It includes the following services:

- **PostgreSQL**: A powerful, open-source object-relational database system.
- **Redis**: An in-memory data structure store, used as a database, cache, and message broker.
- **Zookeeper**: A centralized service for maintaining configuration information and providing distributed synchronization.
- **Kafka**: A distributed event streaming platform capable of handling trillions of events a day.

## Prerequisites

Make sure you have the following installed on your machine:

- Docker
- Docker Compose
- GNU Make
- Go (for local development)

## Getting Started

### Running Locally

1. Clone the repository:

   ```bash
   git clone git@github.com:GitHub-Pavel/api.pavel-k.git
   cd api.pavel-k
   ```

2. Create a `.env` file in the root directory with the necessary environment variables. You can use the provided `.env` template as a reference.

3. Start the services using Docker Compose:

   ```bash
   docker-compose up -d --build
   ```

4. Verify that the services are running:

   ```bash
   docker-compose ps
   ```

5. Run the Go application locally:

   ```bash
   make run
   ```

### Running with `deploy` Profile

To run the application with the `deploy` profile (e.g., for production-like environments):

1. Start the services with the `deploy` profile:

   ```bash
   docker-compose --profile deploy up -d --build
   ```

2. Verify that the services are running:

   ```bash
   docker-compose ps
   ```

## Makefile Commands

The project includes a `Makefile` to simplify common tasks:

- **Run the application**:

  ```bash
  make run
  ```

- **Build the application binary**:

  ```bash
  make build
  ```

- **Clean up build artifacts**:

  ```bash
  make clean
  ```

- **Display available commands**:

  ```bash
  make help
  ```

## Services

### PostgreSQL

- **Description**: A powerful, open-source object-relational database system.
- **Port**: `${POSTGRES_PORT}` (default: 5432)

### Redis

- **Description**: An in-memory data structure store, used as a database, cache, and message broker.
- **Port**: `${REDIS_PORT}` (default: 6379)

### Zookeeper

- **Description**: A centralized service for maintaining configuration information and providing distributed synchronization.
- **Port**: `${ZOOKEEPER_PORT}` (default: 2181)

### Kafka

- **Description**: A distributed event streaming platform capable of handling trillions of events a day.
- **Port**: `${KAFKA_PORT}` (default: 9092)

### Application (Go)

- **Description**: The main Go-based application.
- **Port**: `${APP_PORT}` (default: 8080)

## Stopping the Services

To stop the services, run:

```bash
docker-compose down
```

## License

This project is licensed under the MIT License.
