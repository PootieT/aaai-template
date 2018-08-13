
.SECONDEXPANSION:

.PRECIOUS: %.png %.pdf

.PHONY:	clean all

all: $(shell find -name "*.svg" | sed -e "s/svg/xbb/g") $(shell find -name "*.png" | sed -e "s/png/xbb/g") $(shell find -name "*.jpg" | sed -e "s/jpg/xbb/g")

%.xbb : %.jpg Makefile
	ebb -x $<

%.xbb : %.png Makefile
	ebb -x $<

%.xbb : %.pdf
	ebb -x $<

%.pdf : %.svg
	inkscape -f $< -A $*.pdf -d 150
# %.png : %.svg
# 	inkscape -f $< -e $*.png -d 150
#	convert $< $*.png
#	if you want to use imagemagick, comment out 'inkscape...' and use 'convert...'

clean:
	-find -name "*.xbb" -delete
	-rm *.png *.pdf
