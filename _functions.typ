// Die Datei beinhaltet eigene Funktionen, die in anderen Typst-Dateien importiert werden können.

// Package-Importe
// Codly für bessere Codeblöcke
#import "@preview/codly:1.3.0" : *
#import "@preview/codly-languages:0.1.8" : *

// für codeblöcke diese funktion verwenden -> sonst code nicht in tocfiles/loc.typ
#let codefigure(caption: "Code", codeblock: "") = figure(
  supplement: "Code",
  caption: caption,
  kind: "code",
  [#codly(languages: codly-languages)
    #codeblock
  ]
)

// für Bilder
#let imagefigure(caption: "Bild", image_path: "", height : 5cm) = figure(
  supplement: "Figur",
  image(height: height, image_path),
  caption: caption
)