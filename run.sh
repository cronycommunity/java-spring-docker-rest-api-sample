echo "start"
#mvn clean install

docker build -t javarestdemoimage . || true

docker stop javarestapi || true
docker run --name javarestapi -d -p 8080:8080 --rm javarestdemoimage
echo "end"