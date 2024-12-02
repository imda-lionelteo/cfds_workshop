# Create docker network and volume
docker network create mynet
docker volume create mydb

# Setup the mysql
docker run -d \
    --name mydb \
    --network mynet \
    --mount type=volume,src=mydb,dst=/var/lib/mysql \
    stackupiss/northwind-db:v1

# Setup the application
docker run -d -p 8080:3000 \
    -e DB_HOST=mydb \
    -e DB_USER=root \
    -e DB_PASSWORD=changeit \
    --name myapp \
    --network mynet \
    stackupiss/northwind-app:v1
