.PHONY: run
run:
	go run cmd/app/main.go

.PHONY: build
build:
	go build -o bin/app cmd/app/main.go

.PHONY: clean
clean:
	rm -rf bin/

.PHONY: help
help:
	@echo "Available commands:"
	@echo "  make run    - Run the application"
	@echo "  make build  - Build the application binary"
	@echo "  make clean  - Clean up build artifacts"