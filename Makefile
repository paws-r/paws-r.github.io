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
	@git submodule init
	@git submodule update --remote

clean-down:
	@echo "INFO $$(date +%F) $$(date +%T): Clearing down site"
	@rm -rf docs
	@rm -rf build/mkdocs/site

build-docs: clean-down
	@Rscript -e "pawsdocs::build_docs()"

build-site: build-docs
	@echo "INFO $$(date +%F) $$(date +%T): Building site"
	@cd build/mkdocs && uv run zensical build

regen-site: build-site
	@echo "INFO $$(date +%F) $$(date +%T): Moving site to root"
	@rm -rf build/mkdocs/docs

requirements:
	@Rscript -e "if (!require(pak)) install.packages('pak')"
	@Rscript -e "pak::local_install('vendor/paws/paws.common', dependencies = T)"
	@Rscript -e "pak::local_install('r-pkg', dependencies = T)"
	@Rscript -e "pawsdocs::install_rd2qmd()"
	@uv sync --frozen
