all: help

help:
	@echo ""
	@echo "-- Help Menu"
	@echo ""
	@echo "   1. make sonar-analysis        - perform sonar analysis"

sonar-analysis:
	@mvn sonar:sonar -Dsonar.host.url=http://localhost:59000 -Dsonar.jdbc.url=jdbc:postgresql://localhost:59100/sonar

docker-verify:
	@docker-compose -f build/docker/build-environment.yml up
