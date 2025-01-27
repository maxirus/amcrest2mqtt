FROM python:3.9-slim-buster as base
FROM base as builder

RUN mkdir /install
WORKDIR /install

COPY requirements.txt /
RUN pip install --no-warn-script-location --prefix=/install -r /requirements.txt

FROM base
COPY --from=builder /install /usr/local
COPY src /app
COPY VERSION /app
WORKDIR /app

CMD [ "python", "-u", "/app/amcrest2mqtt.py" ]
