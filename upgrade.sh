wget https://github.com/linkerd/linkerd2/releases/download/stable-2.9.0/linkerd2-cli-stable-2.9.0-linux-amd64 && mv -f linkerd2-cli-stable-2.9.0-linux-amd64 /usr/local/bin/linkerd && chmod +x /usr/local/bin/linkerd && linkerd version

linkerd upgrade | kubectl apply --prune -l linkerd.io/control-plane-ns=linkerd -f -

#NodePort
k apply -n linkerd -f linkerdwebsvc.yml
#linkerdwebdeploy disable host check
kubectl get deploy linkerd-web -n linkerd -oyaml | sed '/last-applied-configuration/d' | sed '/enforced-host/d' | kubectl apply -n linkerd -f - && kubectl rollout restart deployment.apps/linkerd-web -n linkerd

linkerd check






