TAR = slupy6.Bulinsky.pdf
SRC = slupy6.Bulinsky.tex
IDX = slupy6.Bulinsky.idx
IND = slupy6.Bulinsky.ind
BLD = slupy6.Bulinsky.aux slupy6.Bulinsky.log slupy6.Bulinsky.out slupy6.Bulinsky.toc

all : $(TAR)

$(TAR) : $(SRC) $(IND)
	pdflatex $(SRC)
	iec2utf $(IDX)

$(IND) : $(IDX)
	iec2utf $(IDX)
	makeindex $(IDX)

$(IDX): $(SRC)
	pdflatex -draftmode $(SRC)

clean:
	$(RM) $(TAR) $(BLD) $(IDX) $(IND)
