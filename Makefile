install:
	poetry install

build:
	poetry build

package-install:
	python3 -m pip install --force-reinstall dist/*.whl

lint:
	poetry run flake8 gendiff

test:
	poetry run pytest -v -s

test-coverage:
	poetry run pytest --cov=gendiff --cov-report xml

test-cov:
	poetry run pytest --cov=gendiff