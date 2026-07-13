.PHONY: build run unit-test integration-test docker-build clean

build:
	npm install && npm run build

run:
	npm run dev

unit-test:
	npm test

integration-test:
	@echo "No component integration tests for frontend (no owned datastore; integration is cross-service)."

docker-build:
	env
	docker build -t raghudevopsb89.azurecr.io/roboshop-frontend:${GITHUB_SHA} .

docker-push:
	docker push raghudevopsb89.azurecr.io/roboshop-frontend:${GITHUB_SHA}

clean:
	rm -rf node_modules .next
