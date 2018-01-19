#docker run -v $(pwd)/config:/data --network=net-bot --net-alias=bot hypothesisbot
docker restart mongo-bot
docker run -d -v $(pwd)/config:/data --network=net-bot --net-alias=bot --name hypobot hypothesisbot
