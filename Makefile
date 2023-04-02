# Make R use the user's package library by setting the R user home path (R_USER)
# to the folder containing their package library. On Windows, it is in
# ~/Documents/R, whereas in Linux/macOS it is in ~/R.
ifdef OS
	R_USER := ${HOME}
else
	R_USER := ${HOME}
endif
export R_USER

.PHONY: all

update-deps:
	@echo "update paws dependency"
	@git submodule update --remote
	@git submodule init
	@git submodule update

build-topics:
	@Rscript docs.R --topics

build-docs:
	@Rscript docs.R --docs

build-index:
	@Rscript docs.R --index
	@sh docs.sh

all:
	rm -fr docs
	@Rscript docs.R --topics
	@Rscript docs.R --docs
	@Rscript docs.R --index
	@sh docs.sh

clean-up:
	@if [ -d topics ]; then rm -fr topics; fi
	@if [ -d temp ]; then rm -fr temp; fi
	@if [ -f vendor.zip ]; then rm vendor.zip; fi
