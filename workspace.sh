doc="texdoc.tex"
pdflatex $doc
alacritty -e sh -c "cd $PWD && nvim $doc" &
evince $(basename -s .tex "$doc").pdf &
when-changed $doc pdflatex $doc 
