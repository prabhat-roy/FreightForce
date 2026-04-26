.PHONY: build test run docker-build
build:
	mvn -B package
test:
	mvn -B test
run:
	mvn spring-boot:run
docker-build:
	docker build -t freightforce/rbac-service:latest .
