.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/disposition-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t freightforce/disposition-service:latest .

docker-run:
	docker run --rm -p 50081:50081 --env-file .env freightforce/disposition-service:latest
