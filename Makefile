.DEFAULT_GOAL := start-development-environment

.PHONY: start-development-environment
start-development-environment:
	@scripts/start-development-environment

.PHONY: next-page
next-page:
	@bin/nanoc next-page

.PHONY: deploy
deploy:
	@bin/deploy
