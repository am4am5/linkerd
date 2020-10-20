kubectl get -n aismv deploy -o yaml \
  | linkerd inject - \
  | kubectl apply -f -
