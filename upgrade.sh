echo "Stopping and removing bot"
docker stop hypobot > /dev/null
docker stop mongo-bot > /dev/null
docker rm hypobot > /dev/null

echo "Building image"
sh ./build.sh

echo "Starting new bot instance"
sh ./run.sh > /dev/null
