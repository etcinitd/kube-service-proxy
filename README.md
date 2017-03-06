# Kubernetes/OpenShift Service Proxy
To access services in a cluster without requiring a route.

## Build
`docker build -t kube-service-proxy .`

## OpenShift
To run the proxy:

`oc run ${service}-proxy --image=kube-service-proxy -- ${service}:${port}`

To forward a local port to the service through the proxy:

`oc port-forward $(oc get pods | grep ${service}-proxy | awk '{print $1;}') ${local_port}:8080`
