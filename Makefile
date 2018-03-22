.PHONY: build publish

WORMHOLE_VERSION ?= v0.5.36
DOCKER_TAG ?= grampajoe/wormhole-arm:${WORMHOLE_VERSION}

build:
	curl -L -o wormhole https://github.com/superfly/wormhole/releases/download/${WORMHOLE_VERSION}/wormhole_linux_arm
	chmod +x wormhole
	docker build -t ${DOCKER_TAG} .
	rm wormhole

publish:
	docker push ${DOCKER_TAG}
