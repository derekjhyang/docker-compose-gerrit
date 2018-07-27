# docker-compose-gerrit
This project helps you build containerized code-review system gerrit stack rapidly.

[![Build Status](https://travis-ci.org/derekjhyang/docker-compose-gerrit.svg?branch=master)](https://travis-ci.org/derekjhyang/docker-compose-gerrit)

## How to Run
1. sudo docker-compose build # build gerrit docker image
2. sudo docker-compose up -d # run your gerrit stack
3. sudo docker ps # verify the results
4. sudo docker logs --tail 300 gerrit # see the gerrit startup logs

## Demo
![](https://github.com/derekjhyang/docker-gerrit/blob/master/demo-screnshot.png)

## Next
1. copy configs from etc/ to /etc/gerrit/, refer to docker-compose.yml for more details

