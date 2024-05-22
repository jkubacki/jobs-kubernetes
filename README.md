## Jobs App - Kubernetes GitOps configuration

All resources applied to the Kubernetes cluster provisioned [with Terraform](https://github.com/jkubacki/jobs-terraform) are declared in this repository.

Each application/tool is defined as an ArgoCD application. 

ArgoCD receives webhook requests about updates in this repo, and applies changes in Kubernetes.

#### Applications:

[Jobs App](https://jobs.jakubkubacki.com):
* [Rails API](apps/backend) - [repo](https://github.com/jkubacki/jobs-api)
* [Next.js Frontend](apps/frontend) - [repo](https://github.com/jkubacki/jobs-frontend)

[CV](https://jobs.jakubkubacki.com):
* [Next.js Frontend](apps/cv) - [repo](https://github.com/jkubacki/cv)

#### Tools:
* [ArgoCD](tools/argocd) - GitOps
* [Cert Manager](tools/cert-manager) - Provisions Letsencrypt certificates used by ingress
* [Elastic Cloud on Kubernetes (ELK stack)](tools/eck) - Search, log aggegation
* [Fluentd](tools/fluentd) - Getting logs from containers to Elasticsearch
* [ingress-nginx](tools/ingress-nginx) - Load balancer, nginx reverse proxy
* [kube-prometheus-stack](tools/kube-prometheus-stack) - Monitoring, alerts
* [metrics-server](tools/metrics-server) - Get metrics from pods, nodes, etc.
* [mysql](tools/mysql) - Database, usually I tend to use managed databases
* [sealed-secrets](tools/sealed-secrets) - Store secrets in repo. Decode in Kubernetes.

