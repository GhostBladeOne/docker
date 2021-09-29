#!/bin/sh

docker build -t  zy151111/bsc-sp-swap-web:latest .

docker login --username zy151111 -p 9a5477d2-48d9-4944-b67f-2145657d0244


docker push zy151111/bsc-sp-swap-web:latest

