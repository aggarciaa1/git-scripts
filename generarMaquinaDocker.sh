#!/bin/bash
docker network rm ansible
docker network create ansible --subnet=192.186.1.0/24
docker run --detach --privileged --volume=/sys/fs/cgroup:/sys/fs/cgroup:rw --ip 192.168.1.10 --cgroupns=host --name=debian1 --network=ansible apasoft/debian11-ansible
docker run --detach --privileged --volume=/sys/fs/cgroup:/sys/fs/cgroup:rw --ip 192.168.1.11 --cgroupns=host --name=ubuntu1 --network=ansible apasoft/ubuntu22-ansible