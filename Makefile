install:
	python3 -m pip install virtualenv
	rm -rf venv && virtualenv -p python3 venv
	. venv/bin/activate && pip install --upgrade pip && pip install -r requirements.txt && pip list && pip -V

build:
	python3 -m pip install --upgrade build
	rm -rf dist && python3 -m build

lint:
	. venv/bin/activate && pylint --disable=R,C src/mypkg/example.py

clean:
	rm -rf venv
	rm -rf dist
