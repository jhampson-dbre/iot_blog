FROM python:3
RUN mkdir /code
WORKDIR /code
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY blogproject/ .
CMD ["gunicorn", "--bind", "0.0.0.0:8000", "blogproject.wsgi"]