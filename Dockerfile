FROM python:3.8-slim-buster
# Why slim-buster: https://stackoverflow.com/a/62715660

RUN useradd -ms /bin/bash director
USER director
WORKDIR /home/director

ENV PATH=/home/director/.local/bin/:$PATH
ENV DIRECTOR_HOME=/home/director
COPY . .
RUN pip install -r requirements.txt