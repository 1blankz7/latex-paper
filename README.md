Latex Paper
===========

Um das Paper zu nutzen, müssen die Styles des Springer Verlags in der Latexumgebung zur Verfügung stehen.

[Zip-Archiv](ftp://ftp.springer.de/pub/tex/latex/llncs/latex2e/llncs2e.zip)

Im eigenen Arbeitsverzeichnis einen Ordner mit dem Namen `texmf` anlegen und den Inhalt in die entpackten Inhalte in ein Unterverzeichnis kopieren. Anschließend muss der Index von Latex aktualisiert werden.

```BASH
cd
mkdir -p texmf/tex/latex/springer && cd texmf/tex/latex/springer/
wget ftp://ftp.springer.de/pub/tex/latex/llncs/latex2e/llncs2e.zip && unzip llncs2e.zip
rm llncs2e.zip
# not necessary
sudo texhash
```

## BibTeX

Zudem wurden die Bibtexdateien ausgelagert. Man kann entweder die Dateien lokal erstellen oder man legt sie ebenfalls global ab und fügt dann in die .bashrc das folgende Kommando ein.

```BASH
# add bibtex path
export BIBINPUTS=".:/PATH/TO/BIBTEX/FOLDER/:"
```

## PDF erstellen

Der Pfad muss natürlich angepasst werden!

In dem Latexprojekt liegt ein einfaches `Makefile`. Mit `cd PATH/TO/LATEX_PAPER` das Arbeitsverzeichnis wechseln und dann mit `make` das PDF generieren.

### weitere Kommandos

 * `make clean`: Löscht alle Dateien, die von LateX erzeugt werden
 * `make bibtex`: erstellt die Bibligraphie

## Zu Beginn

Im Dokument `paper.tex` müssen einige Zeilen angepasst werden (9, 36, 39, 41).
