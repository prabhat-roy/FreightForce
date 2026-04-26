.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/rfq-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t freightforce/rfq-service:latest .

docker-run:
	docker run --rm -p 50000:50000 --env-file .env freightforce/rfq-service:latest
