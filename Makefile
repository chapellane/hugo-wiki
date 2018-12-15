.PHONY: build
build: VERSION=local
build:
	hugo
	tar -czf site-$(VERSION).tgz -C public .

.PHONY: run
run:
	hugo server --port 3322