.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/pick-pack-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t freightforce/pick-pack-service:latest .

docker-run:
	docker run --rm -p 50022:50022 --env-file .env freightforce/pick-pack-service:latest
