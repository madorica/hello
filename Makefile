install:
	pip install --no-cache-dir --upgrade pip &&\
		pip install --no-cache-dir -r requirements.txt

test:
	#python -m pytest -vv --cov=myrepolib tests/*.py
	#python -m pytest --nbval notebook.ipynb


lint:
	hadolint ./Dockerfile
	pylint --disable=R,C hello.py

all: install lint test