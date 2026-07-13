.PHONY: build run unit-test coverage integration-test docker-build clean

build:
	npm install && npm run build

run:
	npm run dev

unit-test:
	npm test

coverage:
	npm run test:coverage

integration-test:
	@echo "No component integration tests for frontend (no owned datastore; integration is cross-service)."

docker-build:
	env
	docker build -t raghudevopsb89.azurecr.io/roboshop-frontend:${GITHUB_SHA} .

docker-push:
	docker push raghudevopsb89.azurecr.io/roboshop-frontend:${GITHUB_SHA}

clean:
	rm -rf node_modules .next

sonar-scan:
	/home/runner/sonar-scanner-7.1.0.4889-linux-x64/bin/sonar-scanner -Dsonar.projectKey=roboshop-frontend -Dsonar.host.url=http://10.1.0.46:9000 -Dsonar.token=sqa_a82ce4ca385f0ec1f5929abec8fb4fe2945a12c8 -Dsonar.qualitygate.wait=true -Dsonar.javascript.lcov.reportPaths=coverage/lcov.info
