#import "_setup.typ": *

#let style(
  body
) = {

  // Formatierung
  set document(
    title: Title,
    author: Author,
    description: Title + " - " + Subtitle,
  )

  set page(
    paper: "a4",
    number-align: right,
    margin: (
      left: 3.5cm, 
      right: 2.5cm,
      top: 2.5cm,
      bottom: 2.5cm,
    ),
  )

  set text(
    font: Font,
    size: 12pt,
  )

  set par(
    justify: true,
    leading: 0.5em,
  )

  // Kapitelüberschriften
  show heading.where(level: 1): it => {
    block(
      below: 2em,
      width: 100%,
      breakable: false,
    )[
      #v(5em)
      #text(18pt, weight: "bold")[#it.body]
    ]
  }

  // Unterkapitelüberschriften
  show heading.where(level: 2): it => {
    let kapitelnr = counter(heading).display()
    block(
      breakable: false,
      above: 2em,
      below: 1em,
      width: 100%,
    )[
      #text(15pt, weight: "bold")[#kapitelnr #it.body]
    ]
  }

  // Unterunterkapitelüberschriften
  show heading.where(level: 3): it => {
    let kapitelnr = counter(heading).display()
    block(
      breakable: false,
      width: 100%,
    )[
      #text(12pt, weight: "bold")[#kapitelnr #it.body]
    ]
  }

  show list: it => {
    block(above: 1em)[#it]
  }

  // Inhaltverzeichnisse
  show outline.entry: it => {
    // bissl hässlich so, aber direkt auf #Parts zugreifen funktioniert nicht. pro eintrag [] herum sein...
    if it.element.body in ([#Parts.at(0)], [#Parts.at(1)]) {
      block(
        above: 3em,
        below: 2em,
        text(weight: "black", size: 14pt, it.element.body)
      )
    } else if it.element.body in ([Inhaltsverzeichnis], [Eidesstattliche Erklärung]){
    } else if it.level == 1{
      set block(above: 1.5em)
      text(weight: "bold", it)
    }
      else {
      set block(above: 1em)
      it
    }
  }

  // Inhalt
  body
}

// chapter-spezifische Formatierung
#let chapter(
  body
) = {
  // headings:
  show heading.where(level: 1): it => {
    let kapitelnr = counter(heading).display("1")
    block(
      below: 2em,
      width: 100%,
      breakable: false,
    )[
      #v(5em)
      #text(15pt, weight: "bold")[Kapitel #kapitelnr]
      #v(0pt)
      #text(18pt, weight: "bold")[#it.body]
    ]
  }

  body
}