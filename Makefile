init:
	python3 -m pip install virtualenv
	rm -rf venv && virtualenv -p python3 venv
	. venv/bin/activate && pip install --upgrade pip && pip install -r requirements.txt && pip list && pip -V

lint:
		. venv/bin/activate && pylint --disable=R,C src/mypkg/example.py

build:
	python3 -m pip install --upgrade build
	rm -rf dist && python3 -m build

install:
	. venv/bin/activate && python3 -m pip install dist/*.tar.gz

test:
	. venv/bin/activate && python3 -m pytest

clean:
	rm -rf venv
	rm -rf dist
