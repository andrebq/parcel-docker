.PHONY: build release

build:
	docker build -t andrebq/parcel-docker .

release: build
	docker push andrebq/parcel-docker
