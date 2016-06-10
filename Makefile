FILENAME=outreachy-talk
#STY_FILES=$(shell ls *.sty)
IMAGES=$(shell ls img/*)
ARTIFACTS=aux log nav out snm toc vrb

$(FILENAME).pdf: $(FILENAME).tex $(IMAGES) # $(STY_FILES)
	pdflatex $<
	pdflatex $<

clean:
	$(foreach artifact,$(ARTIFACTS),rm -f $(FILENAME).$(artifact))

distclean: clean
	rm -f $(FILENAME).pdf

.PHONY: clean distclean
