.PHONY: build test run docker-build tidy
build:
	go build -o bin/carrier-selection .
test:
	go test ./... -v -race
run:
	go run .
tidy:
	go mod tidy
docker-build: tidy
	docker build -t freightforce/carrier-selection:latest .
