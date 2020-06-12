#!/bin/bash

echo "Building janrauchfuss/dotnet-31-runtime-centos8:local"
docker build -t "janrauchfuss/dotnet-31-runtime-centos8:local" .

docker tag janrauchfuss/dotnet-31-runtime-centos8:local janrauchfuss/dotnet-31-runtime-centos8:3.1
docker tag janrauchfuss/dotnet-31-runtime-centos8:local janrauchfuss/dotnet-31-runtime-centos8:latest
