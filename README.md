# Hello app 
AWS Lambda MLops workflow

## Run it locally
docker run -d -p xxxx:8080 xxxx

## Test your application locally using the runtime interface emulator
curl -XPOST "http://localhost:xxxx/2015-03-31/functions/function/invocations" -d '{"payload":"hello world!"}'