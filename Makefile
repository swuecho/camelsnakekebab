default: all

oasis-setup:
	oasis setup

configure: oasis-setup
	ocaml setup.ml -configure --enable-tests

configure-all: oasis-setup
	ocaml setup.ml -configure --enable-tests 

configure-no-tests:
	oasis setup
	ocaml setup.ml -configure

build: configure-all
	ocaml setup.ml -build

all: configure 
	ocaml setup.ml -all

test: build
	ocaml setup.ml -test

doc:
	ocaml setup.ml -doc

clean:
	ocaml setup.ml -clean

scrub: clean
	ocaml setup.ml -distclean
	rm -rf _tags
	rm -rf myocamlbuild.ml
	rm -rf ./lib/META
	rm -rf setup.ml

install:
	ocaml setup.ml -install

uninstall:
	ocaml setup.ml -uninstall

reinstall:
	ocaml setup.ml -reinstall

.PHONY: build all configure-all build default install uninstall
