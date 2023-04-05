#!/bin/bash

version=$(Rscript get_version.R)
pr_title="Regenerate Paws: ${version}"
pr_body="Regenerate Paws SDK Website: ${version}"

gh pr create --title "${pr_title}" --body "${pr_body}"
