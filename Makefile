build-api:
	docker build -t maltbyhugh/k8s-api:latest --target api ./api

build-client:
	docker build -t maltbyhugh/k8s-client:latest --target client ./client

build-nginx:
	docker build -t maltbyhugh/k8s-nginx:latest --target nginx ./nginx
