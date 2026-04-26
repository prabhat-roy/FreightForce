.PHONY: build test run docker-build
build:
	cargo build --release
test:
	cargo test
run:
	cargo run
docker-build:
	docker build -t freightforce/iot-gateway:latest .
