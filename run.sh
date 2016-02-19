docker-compose stop wagtail
docker-compose rm wagtail

if [ "$(uname)" == "Darwin" ]; then
	docker-machine stop default
	docker-machine ls
	docker-machine start default
	docker-machine regenerate-certs default
	docker-machine env default
	eval "$(docker-machine env default)"
	docker-machine ls
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
	echo "Linux"
fi

docker-compose up wagtail
