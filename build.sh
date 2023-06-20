#!/bin/bash

# Yes, I know.  This is a stupid script.

REPO="tedkulp/postgresql-backup"

cd 10
docker build -t $REPO:10 .
docker push $REPO:10
cd ..

cd 11
docker build -t $REPO:11 .
docker push $REPO:11
cd ..

cd 12
docker build -t $REPO:12 .
docker push $REPO:12
cd ..

cd 13
docker build -t $REPO:13 .
docker push $REPO:13
cd ..

cd 14
docker build -t $REPO:14 .
docker push $REPO:14
cd ..

cd 15
docker build -t $REPO:15 -t $REPO:latest .
docker push $REPO:15
docker push $REPO:latest
cd ..
