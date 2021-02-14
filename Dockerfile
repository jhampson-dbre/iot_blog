FROM python:3.9-buster
RUN mkdir -p /usr/src/blogproject
WORKDIR /usr/src/blogproject
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONBUFFERED 1
# install mariadb dependencies
RUN apt-get update \
    && apt-get -y upgrade \
    && apt-get install -y default-libmysqlclient-dev build-essential
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY blogproject/ .
ENTRYPOINT ["/usr/src/blogproject/entrypoint.sh"]