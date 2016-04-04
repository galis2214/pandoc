#! /bin/bash

# Aquest script crea un document html a partir d'un altre tipus markdown
# Per cada fitxer markdown que trobi al directori el transforma a
# tipus html i el valida.

for m in *.md;
do
	pandoc \
	$m \
	--from markdown \
	--to html \
	--standalone \
	--template=template.txt \
	--output ${m%.md}.html \
		
	xmllint --noout --valid ${m%.md}.html
done
