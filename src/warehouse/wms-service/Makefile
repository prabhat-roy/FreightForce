.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/wms-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t freightforce/wms-service:latest .

docker-run:
	docker run --rm -p 50020:50020 --env-file .env freightforce/wms-service:latest
