# Wagtail docker alpine small

## Installation

# Only for Mac devices

First you will need to create a 'default' virtual machine for docker:

```docker-machine create default --driver virtualbox```

# For both Mac & Linux devices

After that you can run a clean installation with the following command:

```bash run.sh```

## Creating a super user

First you need to bash into you container:

```docker-compose run wagtail bash```

Navigate to your website folder. Default this will be 'mywebsite'. And after that you can create your superuser with:

```cd mywebsite && python manage.py createsuperuser```


## Running wagtail

You can run wagtail again by typing:

```docker-compose up wagtail```

## Stopping wagtail

You can stop wagtail by typing:

```docker-compose stop wagtail```

## Locate it in your browser

You will need to find the ip of your docker machine. You can do this by running the following command:

```docker ps```

Choose your container id and use docker inspect:

```docker inspect <CONTAINER_ID> | grep IPAddress```

Then you know your docker machine ip and Wagtail is binded to port 8000.

So you can navigate your browser to:

* http://192.168.99.100:8000

And for the admin interface:

* http://192.168.99.100:8000/admin
