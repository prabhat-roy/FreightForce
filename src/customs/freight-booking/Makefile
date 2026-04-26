.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/freight-booking .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t freightforce/freight-booking:latest .

docker-run:
	docker run --rm -p 50060:50060 --env-file .env freightforce/freight-booking:latest
