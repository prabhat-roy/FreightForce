.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/audit-pay .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t freightforce/audit-pay:latest .

docker-run:
	docker run --rm -p 50103:50103 --env-file .env freightforce/audit-pay:latest
