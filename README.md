# mockerdb

A containerized mongodb implementation that allows you to copy databases and connect to them locally or via other containers.

Useful for development environments where you want to have access to production data without affecting it.

## Use

First build the container
```bash
docker build -t mockerdb .
```
Then run it with the appropriate MONGODB_URL, in this example we use a mongodb atlas url
```bash
docker run -it -e MONGODB_URL=mongodb+srv://<username>:<password>@cluster.mongodb.net -p 27017:27017 mockerdb
```

If you wish to only connect it to other containers you may skip the -p flag

*Note in order for you to connect to the mockerdb container locally via mongo make sure the mongod service is not running*

## Usage with docker-compose

to use with docker-compose simply pass the MONGODB_URL as en environment variable
```yml
version: "3.0"
services:
    mockerdb:
        build: .
        ports:
            - 27017:27017
        environment:
            - MONGODB_URL=mongodb+srv://<username>:<password>@cluster.mongodb.net
```

