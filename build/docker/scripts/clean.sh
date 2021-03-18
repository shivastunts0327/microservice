echo "Stopping all containers"
docker-compose stop
docker stop $(docker ps -a -q)
docker rmi -f $(docker images)
echo "Removing all containers"
docker rm $(docker ps -a -q)