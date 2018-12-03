https://docs.google.com/presentation/d/1-vPLI7XMEG0-3i4cor5HX26255nsOGx8_VjrKYgBe8I/edit#slide=id.g462a0de2d7_0_914

    3  kubectl get pods
   18  kubectl create -f https://raw.githubusercontent.com/mateobur/prometheus-monitoring-guide/master/traefik-prom.yaml
   19  alias k=kubectl
   25  cd /tmp/
   26  mkdir prom
   27  cd prom
   # place the code from the presentation page 90
   28  vi prometheus.yml
   32  k create configmap prom.yml --from-file prometheus.yml
   36  k get configmap
   42  k create -f https://raw.githubusercontent.com/yanivomc/monitoring-stack/master/prometheus/k8s-setup/prometheus-deployment.yml
   43  k get scv
   44  k get svc
   45  get describe prometheus-example-service
   46  get svc describe prometheus-example-service
   47  k describe prometheus-example-service
   48  k get describe prometheus-example-service
   49  k svc describe prometheus-example-service
   50  k describe svc prometheus-example-service
   51  history


Good stuff
#  k replace --force -f https://raw.githubusercontent.com/yanivomc/monitoring-stack/master/prometheus/k8s-setup/prometheus-deployment.yml
