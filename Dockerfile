FROM python:3
RUN mkdir -p /usr/src/blogproject
WORKDIR /usr/src/blogproject
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONBUFFERED 1
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY blogproject/ .
ENTRYPOINT ["/usr/src/blogproject/entrypoint.sh"]