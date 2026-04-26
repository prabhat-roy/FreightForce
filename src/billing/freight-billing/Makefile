.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/freight-billing .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t freightforce/freight-billing:latest .

docker-run:
	docker run --rm -p 50100:50100 --env-file .env freightforce/freight-billing:latest
