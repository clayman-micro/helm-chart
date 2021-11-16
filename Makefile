.PHONY: clean clean-test clean-pyc clean-build

clean: clean-build

clean-build:
	rm -fr build/

lint:
	@helm lint micro

template: clean
	@helm template micro --output-dir=build --values=$(values)