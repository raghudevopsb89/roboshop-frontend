.PHONY: build run docker-build clean

build:
	npm install && npm run build

run:
	npm run dev

docker-build:
docker-build:
	docker build -t raghudevopsb89.azurecr.io/roboshop-frontend .
	docker push raghudevopsb89.azurecr.io/roboshop-frontend

clean:
	rm -rf node_modules .next
