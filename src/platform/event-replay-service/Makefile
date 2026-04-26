.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/event-replay-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t freightforce/event-replay-service:latest .

docker-run:
	docker run --rm -p 51009:51009 --env-file .env freightforce/event-replay-service:latest
