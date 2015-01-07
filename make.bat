rem Batchdatei zur Erstellung meiner Diplomarbeit mit Glossar,
rem Inhaltsverzeichnis usw..
rem Alle Zwischendateien bleiben erhalten, so dass Zwischenlaeufe in
rem TeXnicCenter nicht mehr notwendig sind.

rem set prjName=TUC - LaTeX-Template for scientific artifacts
set param1=%1
set prjName=%param1:"=%

cd %2
rem LaTeX Vorlauf
latex "%prjName%.tex"
latex "%prjName%.tex"

rem Literaturverzeichnis erzeugen
bibtex "%prjName%"

rem Stichwortverzeichnis erzeugen
rem makeindex %prjName%

rem Glossar erzeugen
rem makeindex -s %prjName%.ist -t %prjName%.glg -o %prjName%.gls rem %prjName%.glo

rem DVI-Dokument erzeugen, Glossar einbinden und Literaturverzeichnis danach nochmal aktualisieren
latex "%prjName%.tex"
latex "%prjName%.tex"

rem PDF-Dokument erzeugen
pdflatex "%prjName%.tex"

rem aufräumen
set nextfolder=chapters
goto loesche
rem next folder

:chapters
cd chapters
set nextfolder=formalLayout
goto loesche

:formalLayout
cd ../formalLayout
set nextfolder=meta
goto loesche

:meta
cd ../meta
set nextfolder=endPatch
goto loesche

:loesche
del "*.aux"
del "*.bbl"
del "*.blg"
del "*.dvi"
del "*.lof"
del "*.lot"
del "*.out"
del "*.toc"
goto %nextfolder%

:endPatch