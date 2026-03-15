install:
	pip install -r requirements.txt

test:
	pytest tests/

lint:
	flake8 src/

docker-build:
	docker build -t llm-performance-benchmarker .

docker-run:
	docker run -p 8000:8000 llm-performance-benchmarker
