#!/bin/bash

echo "Criando IMAGENS ..."

docker build -t jhonmercedes/projeto-backend:1.0 backend/.
docker build -t jhonmercedes/projeto-database:1.0 database/.

echo "Realizando push para dockerhub"

docker push jhonmercedes/projeto-backend:1.0
docker push jhonmercedes/projeto-database:1.0

echo "Criando serviços no cluster KS8"

kubectl apply -f ./services.yml

echo "Criando os deployments"

kubectl apply -f ./deployment.yml

