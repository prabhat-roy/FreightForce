.PHONY: build test run docker-build tidy
build:
	go build -o bin/maintenance-scheduler .
test:
	go test ./... -v -race
run:
	go run .
tidy:
	go mod tidy
docker-build: tidy
	docker build -t freightforce/maintenance-scheduler:latest .
