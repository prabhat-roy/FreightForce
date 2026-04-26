.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/accessorial-charges .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t freightforce/accessorial-charges:latest .

docker-run:
	docker run --rm -p 50102:50102 --env-file .env freightforce/accessorial-charges:latest
