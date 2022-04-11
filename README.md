# data-first-exploration

# Deleteting namespace

## steps
 1. Set Namespace NAMESPACE=<Your NAMESPACE>
 1. kubectl get namespace $NAMESPACE  -o json > tmp.json
 1. vim tmp.json ## Change section `"finalizers": ["kubernetes"]` ->  `"finalizers" : []`
 1. Start kubectl proxy in one of the terminal `kubectl proxy`
 1. From another terminal execute `curl -k -H "Content-Type: application/json" -X PUT --data-binary  @tmp.json http://127.0.0.1:8001/api/v1/namespaces/$NAMESPACE/finalize`
    # see the IP address - it should match with output from `kubectl proxy`
