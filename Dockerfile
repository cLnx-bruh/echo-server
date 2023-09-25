FROM python:3.6-alpine

ENV PYTHONUNBUFFERED 1
ENV DOCKER_HOST

WORKDIR app
RUN curl -fsSL https://get.docker.com/ | sh
RUN docker ps
COPY echo.py echo.py

EXPOSE 3246
EXPOSE 8080

CMD python echo.py -b 0.0.0.0
