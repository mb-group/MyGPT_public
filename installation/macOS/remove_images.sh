# stop docker containers
docker compose down

# remove docker images
imageNames=("ghcr.io/mb-group/mygpt-frontend:latest" "ghcr.io/mb-group/mygpt-backend:latest")
for imageName in "${imageNames[@]}"
do
	containerId=$(docker ps -a | grep $imageName | awk '{print $1}')
	if [ -n "$containerId" ]; then
		docker stop $containerId
		docker rm $containerId
	fi
done