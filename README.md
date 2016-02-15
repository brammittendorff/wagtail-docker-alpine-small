# Wagtail docker alpine small

## Installation

First you will need to create a 'default' virtual machine for docker:

```docker-machine create default --driver virtualbox --virtualbox-disk-size 16000```

After that you can run a clean installation with the following command:

```bash rerun.sh```

## Creating a super user

Make sure wagtail is running. After that bash into your wagtail container. First you need to know the container id:

```docker ps```

You will see something like this:
```
CONTAINER ID        IMAGE                            COMMAND             CREATED             STATUS              PORTS                    NAMES
bbaee78b9e7b        wagtaildockerbasesmall_wagtail   "bash run.sh"       4 minutes ago      Up 4 minutes       0.0.0.0:8000->8000/tcp   wagtaildockerbasesmall_wagtail_1
```

Your container id is: `bbaee78b9e7b`

To bash into your container use the following command:

```sudo docker exec -i -t bbaee78b9e7b bash```

And after that you can create your superuser with:

```python manage.py createsuperuser```


## Running wagtail

You can run wagtail again by typing:

```docker-compose up wagtail```

## Stopping wagtail

You can stop wagtail by typing:

```docker-compose stop wagtail```

## Locate it in your browser

You will need to find the ip of your docker machine. You can do this by running the following command:

```docker-machine ls```

You will see something like this:

* tcp://192.168.99.100:2376

Then you know your docker machine ip is:

* 192.168.99.100

Wagtail is binded to port:

* 8000

So you can navigate your browser to:

* http://192.168.99.100:8000

And for the admin interface:

* http://192.168.99.100:8000/admin
