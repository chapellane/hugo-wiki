.PHONY: build
build:
	test $(FILENAME)
	hugo
	tar -czf ${FILENAME} -C public .

.PHONY: run
run:
	hugo server --port 3322