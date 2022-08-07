.PHONY: test
test:
	pytest --cov=wark/ -vv tests/

.PHONY: linters
linters:
	flake8 wark/ tests/
	mypy wark --implicit-reexport
	black wark/ tests/
	isort wark/ tests/
