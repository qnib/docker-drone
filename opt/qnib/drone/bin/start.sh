#!/bin/bash

env > /root/env

/usr/bin/drone ${QNIB_DRONE_TYPE}
