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

build-docs:
	@rm -fr docs
	@Rscript docs.R --docs

build-index:
	@Rscript docs.R --index
	@sh docs.sh
