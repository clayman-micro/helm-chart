.PHONY: clean clean-test clean-pyc clean-build

clean: clean-build

clean-build:
	rm -fr build/

lint:
	@helm lint

template: clean
	@helm template . --output-dir=build --values=$(values)