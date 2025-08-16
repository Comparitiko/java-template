.PHONY: build clean api-run

clean:
	@./gradlew clean

format:
	@./gradlew rewriteRun

lint:
	@./gradlew spotlessApply

api-test:
	@./gradlew :api:test

api-build:
	@./gradlew :api:build

api-dev: clean lint format
	@./gradlew :api:run
