FROM python:3.8-slim-buster
RUN apt-get update
RUN apt-get install -y --no-install-recommends build-essential gcc
WORKDIR /usr/src/app
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
ENV FLASK_ENV=development
RUN python3 -m venv nonroot-env/
ENV PATH= "/nonroot-env/bin:$PATH
RUN /usr/local/bin/python -m pip install --upgrade pip
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY . .
CMD [ "flask", "run" ]
