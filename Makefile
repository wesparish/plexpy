IMAGE_NAME=plexpy
NAMESPACE=wesparish/
REGISTRY=
TAG=

all: push

build:
	docker build -t $(REGISTRY)$(NAMESPACE)$(IMAGE_NAME)$(TAG) .

push: build
	docker push $(REGISTRY)$(NAMESPACE)$(IMAGE_NAME)$(TAG)

clean:
	docker rmi $(REGISTRY)$(NAMESPACE)$(IMAGE_NAME)$(TAG)
