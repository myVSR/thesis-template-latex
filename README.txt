------------------- 01. Projekt umbenennen ------------------------------------------
1. "TUC - LaTeX-Template for scientific artifacts.tcp" in "<newName>.tcp" umbenennen
2. "TUC - LaTeX-Template for scientific artifacts.tex" in "<newName>.tex" umbenennen
3. "<newName>.tcp" �ffnen: 
	Variable "MainFile" auf "<newName>.tex" setzen

------------------- 02. Texnic einrichten --------------------------------------------
- Batchdatei f�r automatische Erstellung nutzen:
	1.  Men� Ausgabe -> Ausgabeprofile definieren
	2.  Profil "LaTeX->PDF" ausw�hlen
	3.  Kopieren klicken und neues Profil benennen, z.B. "Makefile nutzen" 
	4.  H�ckchen bei "LaTex in diesem Profil verwenden" entfernen
	5.  H�ckchen bei "Bibtex in diesem Profil nicht verwenden" setzen
	6.  H�ckchen bei "Makeindex in diesem Profil nicht verwenden" setzen
	7.  Reiter "Nachbearbeitung" �ffnen
	8.  rechts neben Postprozessoren das Symbol f�r "neu" klicken und Namen eingeben, z.B. "makefile ausf�hren"
	9.  bei Anwendung: den kompletten Pfad zu "make.bat" eingeben
	10. bei Argumente: '"%tm" "%dm"' eingeben (mit Anf�hrungszeichen!!!!)
	11. ok, das war's 


- Metadaten (Name, etc) in "meta/meta.tex" setzen


------------------- 03. beim Probe lesen zu beachten: --------------------------------

- nach fehlerhaften Zitaten suchen (Suche nach "[?]")
