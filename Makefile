test.all:
	python -m pytest --cov=src --junitxml=pytest-report.xml --cov-report=xml tests/unit

test.index:
	python -m pytest --cov=src/index --cov-report=xml tests/unit/index

test.demo:
	python -m pytest --cov=src/demo --cov-report=xml tests/unit/demo

codecov.all: 
	bash <(curl https://codecov.io/bash) -t 6a18c1d3-0ba3-4d28-877a-f3eb0708c5c4 -f coverage.xml

codecov.demo:
	bash <(curl https://codecov.io/bash) -t 6a18c1d3-0ba3-4d28-877a-f3eb0708c5c4 -F demo -f coverage.xml

codecov.index:
	bash <(curl https://codecov.io/bash) -t 6a18c1d3-0ba3-4d28-877a-f3eb0708c5c4 -F index -f coverage.xml