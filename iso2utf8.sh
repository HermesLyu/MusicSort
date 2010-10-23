#!/bin/bash
ls *.backup |while read f1
do 
	mv "${f1}" "${f1}"0
done

ls *.cue |while read filename
do 
	ff=${filename/.cue/}
	mv "${ff}.cue" "${ff}.backup"
	iconv --from-code=ISO-8859-1 --to-code=UTF-8 *.backup > "${ff}.cue"
done

