IMAGE=tutum.co/andrefreitas/nagios
VERSION=latest

dev:
	docker-compose build dev
	docker-compose up dev

build:
	docker build -t $(IMAGE):$(VERSION) .

push:
	docker push $(IMAGE):$(VERSION)

deploy: build push
