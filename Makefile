.PHONY: build run docker-build clean

build:
	npm install && npm run build

run:
	npm run dev

docker-build:
	env
	docker build -t raghudevopsb89.azurecr.io/roboshop-frontend:${GITHUB_SHA} .

docker-push:
	docker push raghudevopsb89.azurecr.io/roboshop-frontend:${GITHUB_SHA}

clean:
	rm -rf node_modules .next
