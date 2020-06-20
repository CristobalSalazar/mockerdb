#!/bin/bash
set -m
mkdir db
echo "Dumping mongodb database from $MONGODB_URL"
mongodump --uri=$MONGODB_URL --out=./db
mongod --bind_ip_all & mongorestore ./db
fg 1
