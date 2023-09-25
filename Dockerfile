FROM python:3.6-alpine

ENV PYTHONUNBUFFERED 1

WORKDIR app
RUN apk --update add docker
RUN docker run hello-world
ARG DOCKER_HOST=tcp://localhost:2375
COPY echo.py echo.py

EXPOSE 3246
EXPOSE 8080

CMD python echo.py -b 0.0.0.0
