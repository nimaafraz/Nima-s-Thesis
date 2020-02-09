FILE := $(shell basename $(shell ls -t *.tex | head -n 1) .tex)

all: figures/dia/.fromdia img/.fromdia img/.fromsvg img/.fromgv $(FILE).pdf

show: all
	open $(FILE).pdf &

$(FILE).pdf: $(FILE).ps
	ps2pdf -dEmbedAllFonts=true -dSubsetFonts=true -dEPSCrop=true -dPDFSETTINGS=/prepress $(FILE).ps
	rm -f *.aux *.log *~ *.dvi *.ps *.texe *.blg *.bak *.bbl *.idx *.lof *.lot *.out *.toc src/*.aux

$(FILE).ps: $(FILE).dvi
	dvips $(FILE).dvi

$(FILE).dvi: $(FILE).tex
	latex $(FILE).tex
	latex $(FILE).tex
	bibtex $(FILE).aux || true
	latex $(FILE).tex
	latex $(FILE).tex

gedit:
	gedit $(FILE).tex || open $(FILE).tex &

clean:
	rm -f *.aux *.log *~ *.dvi *.ps *.texe *.blg img/*converted*.pdf *.bak *.bbl *.idx *.lof *.lot *.out *.toc src/*.aux

distclean: clean
	rm -f figures/dia/.fromdia  img/.fromsvg img/.fromgv

diafiles=$(shell ls figures/dia/*.dia | cut -d '.' -f 1 | cut -d '/' -f 3)
dia_objs=$(shell ls figures/dia/*.dia)

figures/dia/.fromdia: $(dia_objs)
	$(foreach diafile,$(diafiles),dia -t svg --export figures/dia/$(diafile).svgx figures/dia/$(diafile).dia;)
	$(foreach diafile,$(diafiles),inkscape --file figures/dia/$(diafile).svgx --export-area-drawing --without-gui --export-ps=figures/$(diafile).eps;)
	touch img/.fromdia
	$(foreach diafile,$(diafiles),rm figures/dia/$(diafile).svgx;)

svgfiles=$(shell ls img/src/*.svg | cut -d '.' -f 1 | cut -d '/' -f 3)
svg_objs=$(shell ls img/src/*.svg)
gv_objs=$(shell ls img/src/*.gv)
gvfiles=$(shell ls img/src/*.gv | cut -d '.' -f 1 | cut -d '/' -f 3)

img/.fromsvg: $(svg_objs)
	$(foreach svgfile,$(svgfiles),inkscape --file img/src/$(svgfile).svg --export-area-drawing --without-gui --export-ps=img/$(svgfile).eps;)
	touch img/.fromsvg
img/.fromgv: $(gv_objs)
	$(foreach gvfile,$(gvfiles),cat img/src/$(gvfile).gv | dot -Kfdp -Teps > img/$(gvfile).eps;)
	touch img/.fromgv
