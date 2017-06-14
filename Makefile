all: package docker-build rm run

package:
	mvn package

docker-build:
	docker build -t jmx_exporter .

rm:
	docker rm -f jmx || true

run:
	docker run --name jmx -p 7000:7000 -p 7001:7001 -p 5556:5556 -v $(shell pwd)/jmx_prometheus_httpserver/target/jmx_prometheus_httpserver-0.10-SNAPSHOT-jar-with-dependencies.jar:/jmx_prometheus_httpserver-0.10-SNAPSHOT-jar-with-dependencies.jar jmx_exporter
