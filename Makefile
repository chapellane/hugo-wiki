.PHONY: upload
upload: VERSION=local
upload: build
	test $(BUCKET)
	aws s3 cp site-$(VERSION).tgz s3://$(BUCKET)/

.PHONY: build
build: VERSION=local
build:
	hugo
	tar -czf site-$(VERSION).tgz -C public .

.PHONY: run
run:
	hugo server --port 3322