## Dockerfile for cobar server
A Dockerfile project for cobar server image build

## Reference
1. You need prepare some mysql server node, and every node should has an database named ```dbtest```
2. Docker deamond needed

## Quick start
1. clone this project
```
git clone https://github.com/geksong/cobar-docker.git
```
2. Setting configuration
   * change the partition rule by update the ```./rule.xml``` file
   * change the mysql server node by update then ```./schema.xml``` file
   
3. Run build
```
./dockerbuild.sh
```

4. Run container
```
./docker-run.sh
```

5. Check container is runing
```
docker container ls -a | grep cobar-default
```
and then you will see an container name is ```cobar-default``` is UP. And now you can check then stdout log by attach to the container, the cobar log path is ```/usr/local/cobar/logs/stdout.log```
