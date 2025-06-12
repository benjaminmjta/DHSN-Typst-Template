#let style(
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
    let kapitelnr = counter(heading).display("1.1")
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
    let kapitelnr = counter(heading).display("1.1")
    block(
      breakable: false,
      above: 1.2em,
      below: 1em,
      width: 100%,
    )[
      #text(12pt, weight: "bold")[#kapitelnr #it.body]
    ]
  }
  

  // Inhaltsverzeichnisse
  show outline.entry: it => {
    set block(above: 1em)
    it
  }

  show outline.entry.where(
  level: 1
  ): it => {
    set text(weight: "bold")
    it
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