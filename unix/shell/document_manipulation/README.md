# Document manipulation/editing

## PDF manipulation


~~~~
pdftk file1.pdf file2.pdf cat output mergedfile.pdf
~~~~

~~~~
pdftk foo.pdf cat 1-2 output loloutput.pdf
~~~~

~~~~
pdftk foo.pdf cat 1 5 21 output loloutput.pdf
~~~~

**Rotate by -90 degrees:**
~~~~
pdftk int.pdf cat 1-endE output out.pdf
~~~~


**Compress a .pdf file**

~~~~
gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.3 -dPDFSETTINGS=/screen -dNOPAUSE -dBATCH  -dQUIET -sOutputFile=output.pdf input.pdf # not so lossy
~~~~

~~~~
convert input -compress Zip output.pdf # lossy
~~~~



### Rescale pdf

~~~~
pdfjam --a4paper --scale factor -- input.pdf
~~~~

Example:

~~~~
pdfjam --a4paper --scale 0.95 -- poster.pdf
~~~~

## Postscript

**Convert all *.eps files in all subfolders into .pdf:**

~~~~
FILES=$(find . -name "*.eps" -type f -printf "%p\n"); for f in ${FILES}; do ps2pdf $f ${f%.eps}.pdf; done
~~~~

**Convert all *.eps files in a folder into .pdf:**


- For ps:

  ~~~~
  for FILE in *.ps
  do
      ps2pdf $FILE
  done
  ~~~~

- For eps:

  ~~~~
  for FILE in *.eps
  do
      ps2pdf $FILE
  done
  ~~~~


## Image file

**Convert multiple image to another format:**

~~~~
convert *.jpg pictures.pdf
~~~~

OR

~~~~
mogrify -format newformat *.oldformat
~~~~

Example:

~~~~
mogrify -format png *.gif 
~~~~

**Convert single file to another with detailed options:**

~~~~
convert -quality 05 -density 200x200 -trim compare_r3H_DeltapT_HP.pdf compare_r3H_DeltapT_HP.png
~~~~
