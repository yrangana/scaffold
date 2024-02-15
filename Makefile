install-python3.11:
	pip install --upgrade pip &&\
		pip install -r requirements-3.11.txt

format:
	black *.py

lint:
	pylint --disable=R,C src/*.py tests/*.py main.py

test:
	python -m pytest -vv tests/*.py

all-3.11: install-python3.11 lint test