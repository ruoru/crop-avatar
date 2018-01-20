#!/bin/sh 
echo 'Choose a environment of the gateway api(dev/prod):'
read env
case $env in
  dev) npm run build:dev && npm run dev
  ;;
  prod) npm run build:prod && npm run prod
  ;;
  *) echo 'Your input does not exist.'
  ;;
esac