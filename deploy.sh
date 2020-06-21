#!/usr/bin/env bash

kubectl delete deployment slt-deployment
kubectl delete service slt-service
kubectl create -f deployment.yaml
kubectl create -f service.yaml
kubectl get pods -lapp=slt
export POD_NAME=$(kubectl get pods -lapp=oms --field-selector=status.phase=ContainerCreating -o go-template --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}')
kubectl logs -f $POD_NAME slt
# Starting a web server on command line:
# python -m http.server
