#import "_setup.typ": *

#v(5%)

#image(
  "figures/Logo_DHSN.png", 
  width: 100%, 
  height: 3cm,
  fit: "contain",
)

#v(5%)

#align(center, text(14pt)[
  *#School*
])

#align(center, text(12pt)[
  \- Studienrichtung #FieldOfStudy -
])

#v(10%)

#align(center, text(14pt)[
  *#Title*
])

#align(center, text(14pt)[
  *#Subtitle*
])

#v(10%)

#align(center, text(12pt)[
  *#Paper*
])

#align(center, text(12pt)[
  vorgelegt am #SubmissionDate von
])

#align(center, text(12pt)[
  *#Author*
])

#align(center, text(12pt)[
  Matrikelnummer: #MatrikelNr
])

#v(10%)

#align(center)[
  #block(width: 80%)[
    #grid(
      columns: (1fr, auto),
      align(left)[
        Ausbildender Praxispartner: \
        \
        Begutachtung Praxispartner: \
        Begutachtung Hochschule: \
      ],
      align(left)[
        #Company \
        #CompanyAddress \
        #CompanySupervisor \
        #UniversitySupervisor \
      ]
    )
  ]
]

#pagebreak(to: "odd")