VERSION=00
rfc3315bis-${VERSION}.txt: rfc3315bis.txt
	cp rfc3315bis.txt rfc3315bis-${VERSION}.txt
	git add rfc3315bis-${VERSION}.txt rfc3315bis.txt

%.txt: %.xml
	unset DISPLAY; XML_LIBRARY=$(XML_LIBRARY):./src xml2rfc $? $@

%.html: %.xml
	unset DISPLAY; XML_LIBRARY=$(XML_LIBRARY):./src xml2rfc --html -o $@ $?

