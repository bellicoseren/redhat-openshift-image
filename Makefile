IMAGE_NAME = multiva/imagen-base-springboot

build:
	docker build -t $(IMAGE_NAME) .

.PHONY: test
test:
	docker build -t $(IMAGE_NAME)-candidate .
	IMAGE_NAME=$(IMAGE_NAME)-candidate test/run test-app
	IMAGE_NAME=$(IMAGE_NAME)-candidate test/run test-app-mvnw
