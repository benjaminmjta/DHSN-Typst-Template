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
#let imagefigure(caption: "Bild", src: "", height : auto, width : auto) = figure(
  supplement: "Figur",
  image(height: height, src, width: width),
  caption: caption
)

#let twoimagesfigure(caption1: "Bild 1", caption2: "Bild 2", src1: "", src2: "", height : 100pt, width1: 50%, width2: 50%, gutter: auto) = align(center)[
  #block(width: 100%)[
    #grid(
      columns: (width1, width2),
      gutter: gutter,
      align(left)[
        #imagefigure(
          caption: caption1,
          src: src1,
          width: 100%,
          height: height
        )
      ],
      align(right)[
        #imagefigure(
            caption: caption2,
            src: src2,
            width: 100%,
            height: height
          )
      ]
    )
  ]
]