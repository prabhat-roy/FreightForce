.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/route-analytics .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t freightforce/route-analytics:latest .

docker-run:
	docker run --rm -p 50141:50141 --env-file .env freightforce/route-analytics:latest
