wget https://github.com/linkerd/linkerd2/releases/download/edge-20.10.4/linkerd2-cli-edge-20.10.4-linux-amd64 && mv -f linkerd2-cli-edge-20.10.4-linux-amd64 /usr/local/bin/linkerd && chmod +x /usr/local/bin/linkerd

linkerd upgrade | kubectl apply --prune -l linkerd.io/control-plane-ns=linkerd -f -

linkerd check
linkerd version

#NodePort
k apply -n linkerd -f linkerdwebsvc.yml

linkerdwebdeploy disable host check




