install:
	pip install -r requirements.txt

run:
	python app.py

docker-build:
	docker build -t iris_model .

docker-run:
	docker run -p 4000:5000 iris_model
