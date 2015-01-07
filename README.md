# thesis-template-latex
This is the current template for writing a thesis in Latex at VSR

# How to use?

## 01. Projekt umbenennen 
1. "TUC - LaTeX-Template for scientific artifacts.tcp" in "<newName>.tcp" umbenennen
2. "TUC - LaTeX-Template for scientific artifacts.tex" in "<newName>.tex" umbenennen
3. "<newName>.tcp" öffnen: 
	Variable "MainFile" auf "<newName>.tex" setzen

## 02. Texnic einrichten 
- Batchdatei für automatische Erstellung nutzen:
	1.  Menü Ausgabe -> Ausgabeprofile definieren
	2.  Profil "LaTeX->PDF" auswählen
	3.  Kopieren klicken und neues Profil benennen, z.B. "Makefile nutzen" 
	4.  Häckchen bei "LaTex in diesem Profil verwenden" entfernen
	5.  Häckchen bei "Bibtex in diesem Profil nicht verwenden" setzen
	6.  Häckchen bei "Makeindex in diesem Profil nicht verwenden" setzen
	7.  Reiter "Nachbearbeitung" öffnen
	8.  rechts neben Postprozessoren das Symbol für "neu" klicken und Namen eingeben, z.B. "makefile ausführen"
	9.  bei Anwendung: den kompletten Pfad zu "make.bat" eingeben
	10. bei Argumente: '"%tm" "%dm"' eingeben (mit Anführungszeichen!!!!)
	11. ok, das war's 


- Metadaten (Name, etc) in "meta/meta.tex" setzen


## 03. beim Probe lesen zu beachten: 

- nach fehlerhaften Zitaten suchen (Suche nach "[?]")
