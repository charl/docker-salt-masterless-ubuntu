# Generic 89n docker container for saltstack 
- Starts up a masterless container that listens to saltfiles in /srv/salt/states and /srv/salt/pillar.
- Mount up a saltstack config volume under /srv/salt/states.
- The container runs with bash as shell.

## Building the image 
```
docker build -t 89n/salt-masterless-ubuntu https://github.com/charl/docker-salt-masterless-ubuntu.git
```

## Running a the docker container with current dir as linked volume to /srv/salt/states
```
docker run --rm=false -t -i -h salt-test --name mfvagrant -v $(pwd):/srv/salt 89n/salt-masterless-ubuntu
```
