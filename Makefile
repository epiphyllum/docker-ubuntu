all: build

build:
	@sudo docker build --tag=${USER}/ubuntu:latest .

base:
	@sudo docker pull ubuntu:14.04

rebuild: base
	@sudo docker build --tag=${USER}/ubuntu:latest .

release: rebuild
	@sudo docker build --tag=${USER}/ubuntu:14.04.$(shell date +%Y%m%d) .
