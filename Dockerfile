FROM pasdfsdakjsd

ENV PYTHONUNBUFFERED 1

WORKDIR app
COPY echo.py echo.py

EXPOSE 3246
EXPOSE 8080

CMD python echo.py -b 0.0.0.0
