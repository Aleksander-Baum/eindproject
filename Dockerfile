FROM python:3.10.0-alpine
WORKDIR /code
EXPOSE 8000
COPY ./requirements.txt /code/requirements.txt
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt
RUN pip3 install passlib
COPY ./eindproject /code
RUN mkdir -p /code/mysqldb
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]