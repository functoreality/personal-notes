#!/bin/bash

cd raw/
for f in *.md; do
	if [ "${f:0:4}" = "srs-" ]; then
		sed -re "s/^\* (\{[0-9a-z]{6,8}})(.+)$/* \2\1/" \
			-e "s/^\t([^*> \t])/\t> \1/" \
			~/oc-ptis/srs/"${f:4:-3}.md" > "$f"
	else
		cp --preserve=timestamps ~/oc-ptis/perspective/"$f" ./
	fi
done
