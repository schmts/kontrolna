
FROM python:3.8-slim-buster as compiler
RUN apt-get update
RUN apt-get install -y --no-install-recommends build-essential gcc
WORKDIR /usr/src/app
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
ENV FLASK_ENV=development
RUN python3 -m venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"
COPY requirements.txt requirements.txt
RUN /opt/venv/bin/python3 -m pip install --upgrade pip
RUN pip install -r requirements.txt

FROM python:3.8-slim-buster as runner
WORKDIR /usr/src/app
COPY --from=compiler /opt/venv /opt/venv

ENV PATH="/opt/venv/bin:$PATH"
COPY . /usr/src/app
CMD [ "flask", "run" ]