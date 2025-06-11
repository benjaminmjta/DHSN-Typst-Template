// Hauptdatei, die das gesamte Dokument zusammenfügt
// Start mit >typst watch thesis.typ

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

#pagebreak()
#include "sure.typ"