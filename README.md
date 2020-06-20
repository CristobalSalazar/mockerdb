# Mockerdb

A containerized mongodb implementation that allows you to copy databases and connect to them locally or via other containers.


## Use

First build the container
```bash
docker build -t mockerdb .
```
Then run it
```bash
docker run -it -e MONGODB_URL=yourmongourl -p 27017:27017 mockerdb
```

If you wish to only connect it to other containers you may skip the -p flag

*Note in order for you to connect to the mockerdb container locally via mongo make sure the mongod service is not running*
