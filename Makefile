VAULT_VERSION := 0.7.0

all: build latest
default: build
latest: $(VAULT_VERSION) tag-as-latest
build: $(VAULT_VERSION)

0.7.0:
	docker build --build-arg VAULT_VERSION=0.7.0 -t webofmars/vault:0.7.0 .

tag-as-latest:
	docker tag webofmars/vault:$(VAULT_VERSION) webofmars/vault:latest