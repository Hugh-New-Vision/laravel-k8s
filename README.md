# LOCAL

`docker-compose up --build`: run docker compose based on dev Dockerfiles

`make `: run the Makefile to build prod api/client/nginx images

push to dockerhub

`kubectl create secret generic pgpassword --from-literal PGPASSWORD=password`: create secret for postgres

`kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.0.1/deploy/static/provider/cloud/deploy.yaml`: install ingress-nginx (local)

`kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.0.1/deploy/static/provider/do/deploy.yaml`: install ingress-nginx (DigitalOcean)

`kubectl apply -f k8s/`: apply the k8 yamls

`lk8s apply -f https://github.com/jetstack/cert-manager/releases/download/v1.5.3/cert-manager.yaml`
