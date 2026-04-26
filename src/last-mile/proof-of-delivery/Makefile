.PHONY: build test run docker-build tidy
build:
	go build -o bin/proof-of-delivery .
test:
	go test ./... -v -race
run:
	go run .
tidy:
	go mod tidy
docker-build: tidy
	docker build -t freightforce/proof-of-delivery:latest .
