#!/bin/bash

# Check if the 'docs/reference' folder exists. If not, exit.
if [ ! -d "docs/reference" ]; then
    exit 1
fi

# Move files from 'docs/reference' to 'docs' and fix paths to included CSS and JS.
mv docs/reference/* docs
rmdir docs/reference
find docs -name "*.html" -exec sed -i -E 's/(href|src)="\.\.\/([^"]*)"/href="\2"/g' {} +

# Delete Reference and Changelog from the navbar.
find docs -name "*.html" -exec sed -i -E '/(reference|news)\/index.html/d' {} +

# In each service's index, replace links to 'xxx_yyy.html' with links to 'yyy.html'.
find docs -name "index.html" -exec sed -i -E "s/href='([^_]+)_(.+).html'/href='\2.html'/g" {} +

# Replace links to 'xxx/index.html' with links to 'xxx'.
find docs -name "*.html" -exec sed -i -E 's/href="(.+)\/index.html"/href="\1"/g' {} +

# Delete 'NOT RUN' lines in examples.
find docs -name "*.html" -exec sed -i -E 's/(# NOT RUN \{|# \})//g' {} +

# Delete empty comment lines in examples.
find docs -name "*.html" -exec perl -i -p0e "s/\n?<span class='co'><\/span>\n?//g" {} +
find docs -name "*.bak" -exec rm {} +
