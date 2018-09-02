#!/bin/bash

PACKAGES=(http-server httpster express-generator nodemon yarn)

npm install -g $(echo ${PACKAGES[*]})
