# Hello app 
AWS Lambda MLops workflow

## Run it locally
docker run -d -p 8080:8080 docker-lambda

## Test your application locally using the runtime interface emulator
curl -XPOST "http://localhost:8080/2015-03-31/functions/function/invocations" -d '{"payload":"hello world!"}'