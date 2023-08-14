#!/bin/bash

kind create cluster --config=k8s/kind.yaml ## cria o Cluster
kubectl apply -f k8s/configmap-env.yaml  ## cria o ConfigMap opcional de variaveis de ambiente
kubectl apply -f k8s/configmap-family.yaml  ## cria o ConfigMap opcional de arquvio de texto
kubectl apply -f k8s/secret.yaml ## cria o Secret opcional
kubectl apply -f k8s/service.yaml ## cria o Service, nosso endpoint
kubectl apply -f k8s/deployment.yaml ## cria o Deployment, nossos replicaset e pods
kubectl apply -f k8s/metric-server.yaml ## cria o Metric Server, para monitoramento
kubectl apply -f k8s/hpa.yaml ## cria o HPA, para autoescalar o Deployment

##kubectl port-forward svc/goserver 9000:80  ## opcional, para testar o endpoint

########### Cria um volume local para o banco de dados #############
kubectl apply -f k8s/pvc.yaml ## cria o PVC, nosso volume
kubectl apply -f k8s/statefulset.yaml ## cria o StatefulSet, nosso replicaset e pods para fazer a escrita no DB
kubectl apply -f k8s/service-db.yaml ## cria o Service, nosso endpoint para o DB para fazr a escrita no DB

kubectl apply -f k8s/ingress.yaml ## cria o Ingress, nosso endpoint para o proxy


## Teste de estresse com Fortio
##  kubectl run -it --rm --restart=Never fortio --image=fortio/fortio -- load -qps 1600 -t 220s -c 70 "http://goserver/healthz"
