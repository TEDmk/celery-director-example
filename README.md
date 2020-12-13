# celery-director-example

This is an example of Celery director using `Docker` and `docker-compose`.

## Launch the stack


- First, [Get Docker](https://docs.docker.com/get-docker/)
- Then install [Docker-compose](https://docs.docker.com/compose/install/)
- Clone the repository and go to the repo folder
```bash
git clone https://github.com/TEDmk/celery-director-example.git
cd celery-director-example
```
- Build the docker image
```bash
docker-compose build --no-cache
```
- Set the `DB_PASSWORD` variable
```
export DB_PASSWORD=helloyou
```
- Create the stack
```bash
docker-compose up -d --force-recreate
```

If you want to see the logs
```bash
docker-compose logs
```

## Run a workflow

Here is a curl example:

```bash
curl --location --request POST 'http://127.0.0.1:8000/api/workflows' \
--header 'Content-Type: application/json' \
--data-raw '{
  "project": "example",
  "name": "ETL",
  "payload": {}
}'
```