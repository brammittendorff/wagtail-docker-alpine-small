docker-compose stop wagtail
docker-compose rm wagtail
docker-machine stop default
docker-machine ls
docker-machine start default
docker-machine regenerate-certs default
docker-machine env default
eval "$(docker-machine env default)"
docker-machine ls

docker-compose up wagtail
