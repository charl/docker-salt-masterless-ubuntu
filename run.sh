#!/bin/bash

INSTANCE_IMAGE=manageflitter/salt-masterless-ubuntu
INSTANCE_NAME=manageflittervagrant

docker run --rm-false -p 80 -t -i -h $INSTANCE_NAME --name $INSTANCE_NAME -v $(pwd):/srv/salt $INSTANCE_IMAGE /bin/bash
