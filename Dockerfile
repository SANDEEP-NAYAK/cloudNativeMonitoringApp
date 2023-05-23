#using python:3.9-slim-buster as the base image
FROM python:3.9-buster

#created the working directory in the root dir
WORKDIR /Myapp

#copy the requirements file into /Myapp
COPY requirements.txt .

#install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

#copy the code from my system into the /Myapp
COPY . .

#setting this IP so that the app can run on any machine with any IP
ENV FLASK_RUN_HOST=0.0.0.0

#the port on which the app will be visible
EXPOSE 5000

#command to start the flask app
CMD [ "flask", "run" ]    