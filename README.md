# Wagtail docker alpine small

## Installation

First you will need to create a 'default' virtual machine for docker:
```docker-machine create default --driver virtualbox --virtualbox-disk-size 16000```

After that you can run a clean installation with the following command:
```bash rerun.sh```

## Running again

You can exit the application and run it again by typing:
```docker-compose up wagtail```

## Locate it in you browser

You will need to find the ip of your docker machine. You can do this by running the following command:
```docker-machine ls```

You will see something like this:
```tcp://192.168.99.100:2376```

Then you know your docker machine ip is: `192.168.99.100`

Wagtail is binded to port: `8000`

So you can navigate your browser to:
```http://192.168.99.100:8000```

And for the admin interface:
```http://192.168.99.100:8000/admin```
