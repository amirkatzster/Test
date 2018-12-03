https://docs.google.com/presentation/d/1-vPLI7XMEG0-3i4cor5HX26255nsOGx8_VjrKYgBe8I/edit#slide=id.g462a0de2d7_0_914

kubectl get pods
kubectl create -f https://raw.githubusercontent.com/mateobur/prometheus-monitoring-guide/master/traefik-prom.yaml
alias k=kubectl
cd /tmp/
mkdir prom
cd prom
# place the code from the presentation page 90
vi prometheus.yml
k create configmap prom.yml --from-file prometheus.yml
k get configmap
k create -f https://raw.githubusercontent.com/yanivomc/monitoring-stack/master/prometheus/k8s-setup/prometheus-deployment.yml
k describe svc prometheus-example-service
   # add job to prometheus.yaml
   - job_name: 'traefik'
    static_configs:
    - targets: ['traefik:8080']
# way to reconfig   
k create configmap prom.yml --from-file=prometheus.yml -o yaml --dry-run | kubectl apply -f -
k patch deployment prometheus-deployment -p "{\"spec\":{\"template\":{\"metadata\":{\"annotations\":{\"date\":\"`date +'%s'`\"}}}}}"



Good stuff
#  k replace --force -f https://raw.githubusercontent.com/yanivomc/monitoring-stack/master/prometheus/k8s-setup/prometheus-deployment.yml
