# Iris Classification Project

This project demonstrates a simple machine learning model deployment using Flask and Docker. It trains a Logistic Regression model on the Iris dataset to classify iris species based on sepal length, sepal width, petal length, and petal width. The trained model is served as a web API using Flask, containerized with Docker, and ready for deployment.

## Prerequisites
Before you begin, ensure you have met the following requirements:

- Python 3.8+
- Docker
- Git (for version control)

## Project Structure
```bash
/your_project_directory
│
├── app.py                  # Flask application for serving predictions
├── Dockerfile              # Docker configuration file
├── iris_model.joblib       # The trained model file
├── requirements.txt        # Python dependencies
├── train_model.py          # Script to train the model
└── Makefile                # Automates tasks like installing dependencies


```

## Setting Up the Project
Clone the Repository
```bash
git clone https://github.com/revolutionarybukhari/flask_api_docker
cd flask_api_docker
```

## Train the Model
Run the following command to train the model and generate iris_model.joblib:
```bash
python train_model.py
```

## Build and Run the Docker Container
```bash
docker build -t iris_model .
docker run -p 4000:5000 iris_model
```

The Flask API will now be accessible at http://localhost:4000.

## Making Predictions
To make a prediction, send a POST request to http://localhost:4000/ predict with a JSON body containing the features. For example:
{
  "features": [5.1, 3.5, 1.4, 0.2]
}

You can use tools like Postman or cURL for this purpose:
```bash
curl -X POST http://localhost:4000/predict \
-H 'Content-Type: application/json' \
-d '{"features": [5.1, 3.5, 1.4, 0.2]}'
```


## Screen shot

![Docker img](images/docker.png "Docker Image ss")
