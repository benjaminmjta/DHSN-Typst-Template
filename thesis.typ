/*

***
Dieses Projekt steht unter der GNU General Public License v3.0.
Siehe LICENSE.txt für weitere Informationen.
***

Hauptdatei, die das gesamte Dokument zusammenfügt
Start mit >typst watch thesis.typ
Alle Variablen werden in der _setup.typ definiert
Alle Stile werden in der _style.typ definiert
Alle eigenen Funktionen und Elemente sowie eingebundene Pakete werden in der _functions.typ definert

Doku Typst: https://typst.app/docs/
Typst Pakete: https://typst.app/docs/packages/

Diese Vorlage hält sich an die Vorgaben des Leitfadens der DHSN 
-> siehe ./Leitfaden_DHSN.pdf, Stand 06/2025
(ist zwar für soziale Arbeit, aber für andere Studiengänge gibts keinen eigenen Leitfaden)
https://www.dhsn.de/fileadmin/mediamanager/001_duale_hochschule/// //016_studienangebot/breitenbrunn/soziale_arbeit/dokumente/DHSN_BB_Leitfaden_fuer_das_wissenschaftliche_Arbeiten_Studiengang_Soziale_Arbeit_ab_10_2024.pdf

*/

#import "_style.typ" : *
#import "_setup.typ" : *

// Gibt das gesamte Dokument an die Style Datei weiter -> style.body ist alles unter dieser #show-Anweisung
#show: style.with(
  Title,
  Subtitle,
  Author,
  School,
  FieldOfStudy,
  Paper,
  SubmissionDate,
  MatrikelNr,
  Company,
  CompanyAddress,
  CompanySupervisor,
  UniversitySupervisor,
  Font,
)

#include "title.typ"

// Alphabetische Seitenzahl ab Abstract
#set page(numbering: "a")
#counter(page).update(1)

#include "abstract.typ"

// Verzeichnisse, werden automatisch gefüllt
// lof -> list of figures, loc -> list of code, toc -> table of contents
#include "tocfiles/lof.typ"
#include "tocfiles/loc.typ"
#include "tocfiles/toc.typ"

#set page(numbering: "1")
#counter(page).update(1)
#align(center)[
  #text(size: 20pt)[= Belegarbeit]
]
#pagebreak()
#set heading(numbering: "1")
#counter(heading).update(0)


// Hier alle Kapitel inkludieren
#include "chapters/chapter1.typ"
#include "chapters/chapter2.typ"


#set heading(numbering: none)

#bibliography("bibliography.yml", title: "Quellenverzeichnis")

#pagebreak()
#align(center)[
  #text(size: 20pt)[= Anhang]
]
#pagebreak()
#set heading(numbering: "A")
#counter(heading).update(0)

#include "appendix/code.typ"

#set heading(numbering: none)
#pagebreak()
#include "sure.typ"