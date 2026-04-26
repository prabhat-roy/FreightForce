.PHONY: install run test docker-build
install:
	pip install -r requirements.txt
run:
	python main.py
test:
	pytest -q
docker-build:
	docker build -t freightforce/eta-service:latest .
