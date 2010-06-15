# Makefile to compile latex files
CC = pdflatex
FILE = appunti_elettrotecnica
DATE=$(shell date -u +%Y%m%d)

all:	pdf
pdf:
	$(CC) $(FILE).tex
show:
	nohup evince $(FILE).pdf &

clean:	
	rm *.aux
#	rm *.dvi
#	rm *.toc
	rm *.log
	rm *.out
#	rm *.nav
#	rm *.snm
