#!/bin/bash

cd raw/
for f in *.md; do
	cp --preserve=timestamps ~/oc-ptis/perspective/"$f" ./
done
