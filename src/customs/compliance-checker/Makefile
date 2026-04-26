.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/compliance-checker .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t freightforce/compliance-checker:latest .

docker-run:
	docker run --rm -p 50063:50063 --env-file .env freightforce/compliance-checker:latest
