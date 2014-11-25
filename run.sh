#!/bin/bash

INSTANCE_IMAGE=89n/salt-masterless-ubuntu
INSTANCE_NAME=mfvagrant

docker run --rm-false -p 80 -t -i -h $INSTANCE_NAME --name $INSTANCE_NAME -v $(pwd):/srv/salt $INSTANCE_IMAGE /bin/bash
