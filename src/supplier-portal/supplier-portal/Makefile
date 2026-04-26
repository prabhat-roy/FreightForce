.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/supplier-portal .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t freightforce/supplier-portal:latest .

docker-run:
	docker run --rm -p 50120:50120 --env-file .env freightforce/supplier-portal:latest
