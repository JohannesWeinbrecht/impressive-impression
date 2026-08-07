#import "../src/lib.typ": (
  cv,
  // Utils
  crop-image,
  colorize-svg-string,
  // Elements
  dot-ratings,
  bento,
  skill-bar,
  make-pill,
  make-aside-persona,
  make-aside-grid,
  make-main-content-block,
  make-main-content-block-with-timeline,
  signature,
  // Theme
  theme-helper,
)

#import "utils.typ": flag, fa-icon-factory, fa-icon-factory-stack
#import "theme.typ": theme

#import "@preview/fontawesome:0.5.0": fa-icon, fa-stack
#import "@preview/nth:1.0.1": nth

#let name = "Johannes Weinbrecht"
#let pronouns = "he/him"
#let profile-image = image("assets/profile.jpg")
#let short-description = [
  Dualer Student Informatik
]

#let th = theme-helper(theme)

#let iconer-stack = fa-icon-factory-stack(theme)
#let iconer = fa-icon-factory(theme)
#let dot-ratings = dot-ratings.with(
  size: 6.5pt,
  spacing: 3.5pt,
  color-active: th("primary-accent-color"),
  color-inactive: th("faint-text-color").transparentize(65%),
)
#let skill-bar = skill-bar.with(
  height: 8pt,
  radius: 4pt,
  color-active: th("primary-accent-color"),
  color-inactive: th("faint-text-color").transparentize(65%),
)

#let linker(dest, body) = {
  let body-wrapped = [#text(body, fill: th("primary-accent-color"))#h(0.2em)#box(iconer("link", size: 0.7em), height: 0.8em)]
  return link(dest, body-wrapped)
}

#let linker-pdf(dest, body) = {
  let body-prefixed = [#fa-icon("file-pdf")#h(0.2em)#body]
  return linker(dest, body-prefixed)
}

#let read-and-colorize-svg(path, color) = {
  let svg-content = read(path)
  let colored-svg = colorize-svg-string(svg-content, color)
  return colored-svg
}

#let make-main-content-block = make-main-content-block.with(theme: theme)
#let make-main-content-block-with-timeline = make-main-content-block-with-timeline.with(theme: theme)

// Page 1
#let main-content-1 = [
  == Bildungsweg

  === Studium
  #[
    //#set par(spacing: 0em, leading: 0.3em)

    #make-main-content-block-with-timeline(
      [2024-01],
      [Aufnahme in die Studienstiftung des deutschen Volkes],
      supplement: [],
      [],
      timeline-line-gap: 0pt,
    )
  ]

  #make-main-content-block-with-timeline(
    ([Present], [2024]),
    "Duales Studium Informatik",
    supplement: [#link("www.karlsruhe.dhbw.de", "DHBW Karlsruhe") & #link("www.kit.edu", "KIT")],
    [
      Duales Studium Informatik an der dualen Hochschule Baden-Württemberg Karlsruhe in Kooperation mit dem Karlsruher Institut für Technologie.
      Die Ausbildungsabteilung ist die Gruppe _Energiesystemanalyse (ESA)_ des _Institut für Automation und Angewandte Informatik (IAI)_.
    ]
  )


  === Schulische Laufbahn

  #make-main-content-block-with-timeline(
    ([2022], [2024]),
    "Abitur",
    supplement: [#link("https://www.lmg-crailsheim.de", "Lise-Meitner-Gymnasium Crailsheim")],
    [
      Abiturnote #sym.nothing 1.0 (870/900 Punkten)\
      Leistungskurse: Mathe, Physik, Chemie\
      Zusätzliche Kurse: Informatik & Vertiefungskurs Mathematik
    ]
  )
  #make-main-content-block-with-timeline(
    ([2022], [2016]),
    "Allgemeinbildendes Gymnasium",
    supplement: [#link("https://www.lmg-crailsheim.de", "Lise-Meitner-Gymnasium Crailsheim")],
    [
      Schwerpunktfach: IMP (Informatik, Mathematik, Physik)
    ]
  )
  // #make-main-content-block-with-timeline(
  //   ([2012], [2016]),
  //   "Grundschule",
  //   supplement: [#link("https://www.eds-cr.de/", "Eichendorffschule Crailsheim")],
  //   [
  //   ]
  // )

// Professional Background
  == Beruflicher Werdegang

// Work Experience
  === Duales Studium
  #make-main-content-block-with-timeline(
    ([2026-09], [2026-07]),
    "Vierte Praxisphase",
    supplement: [#link("www.kit.edu", "KIT")],
    [
      Erweiterung des eASiMoV-Frameworks um eine Software zur generischen Darstellung von Stromnetzmodellen im Optimierungskontext ergänzend zu ePowCoRe.
      Diese wurde damit erprobt importierte Netze in _PyPSA_ zu optimieren und rückschlüsse auf die Ausgangsnetze zu ziehen.
    ]
  )

  #make-main-content-block-with-timeline(
    ([2026-01], [2026-03]),
    "Dritte Praxisphase",
    supplement: [#link("www.kit.edu", "KIT")],
    [
      Design und implementierung eines modularen Frameworks zur automatischen Generierung von _Modelica_-Modellen aus beliebigen Datenquellen mit anschließender konvertierung zu _FMU_-Modellen.
      Innerhalb des Frameworks wurde ein Worklfow zur Erstellung von Modellen aus Zeitreihendaten und einer Konvertierung zu _FMUs_ mittels _Dymola_ implementiert.
      Die generierten Häusermodelle wurden in einer Co-Simulation auf dem bwUniCluster getestet und auf plausibilität überprüft.
    ]
  )

  #make-main-content-block-with-timeline(
    ([2024-12], [2024-10]), // TODO
    "Zweite Praxisphase",
    supplement: [#link("www.kit.edu", "KIT")],
    [
      Erweiterung des Open-Source Projekts _ePowCoRe_ um einen _DigSilent PowerFactory_-Exporter.

      Analyse von automatisch generierten Netzen über lange Zeiträume mittels _DigSilent Powerfactory_ zur Überprüfung der Plausibilität. // TODO
      Dabei wurde ein automatisierter Workflow zum Export zahlreicher Daten aus der Simulation so wie der Auswertung dieser erstellt.
    ]
  )

  #make-main-content-block-with-timeline(
    ([2024-12], [2024-10]),
    "Erste Praxisphase",
    supplement: [#link("www.kit.edu", "KIT")],
    [
      Einarbeitung in die betrieblichen Abläufe und die Modellierung und Simulation von Stromnetzen mit _pandapower_. Erweiterung des Open-Source Projekts _ePowCoRe_ um einen _pandapower_-Exporter.
    ]
  )

// Internships
  === Praktika
  #make-main-content-block-with-timeline(
    timeline-width: 1cm,
    ( [2022-04-21], [2022-04-19]),
    "Berufserkundung",
    supplement: [#link("https://www.voith.com/corp-de/ueber-voith/maerkte-standorte/deutschland/crailsheim.html", "J.M. Voith SE & Co. KG Crailsheim")],
    [
      Erkundung in den dualen Studiengängen "Service-Ingenieurwesen" und "Maschinenbau"
    ]
  )

  #make-main-content-block-with-timeline(
    timeline-width: 1cm,
    ([2022-02-25], [2022-02-21]),
    "Berufserkundung",
    supplement: [#link("https://www.bausch-stroebel.com/", "Bausch+Ströbel SE + Co. KG")],
    [
      Erkundung in den dualen Studiengängen "angewandte Informatik"
    ]
  )
]
#let aside-content-1 = [
  #make-aside-persona(
    name,
    //pronouns: pronouns,
    short-description: short-description,
    image: profile-image,
    theme: theme,
  )

  #let personal-information-theme=theme
  #{
    personal-information-theme.aside-text.size=9pt
  }

  #make-aside-grid(
    theme: personal-information-theme,
    iconer-stack("calendar"),
    [28. April 2006],
    iconer-stack("map-marker-alt"),
    [Karlsruhe, Deutschland],
    iconer-stack("flag"),
    [Deutsch],
    iconer-stack("globe"),
    [#link("https://johannesweinbrecht.github.io/", "johannesweinbrecht.github.io")],
    //iconer-stack("phone"),
    //[#link("tel:+49 800 PARADOX", [+44 800 PARADOX])],
    iconer-stack("at"),
    [#link("mailto:johannes.weinbrecht@gmail.com", "johannes.weinbrecht@gmail.com")],
  )


  == Social Network
  #make-aside-grid(
    theme: theme,
    iconer("linkedin"),
    [#link("https://www.linkedin.com/in/johannes-weinbrecht/", "Johannes Weinbrecht")],
    iconer("github"),
    [#link("https://github.com/JohannesWeinbrecht", "JohannesWeinbrecht")],
    iconer("sistrix"),
    [#link("https://johannesweinbrecht.github.io/", "Personal Website")],
  )

  == Languages
  #make-aside-grid(
    columns: (auto, 1fr, auto, auto),
    rows: 12pt,
    align: (horizon + center, horizon + left, horizon + right, horizon + right),
    theme: theme,
    flag("GER"),
    [German],
    [C2],
    dot-ratings(6, 6),
    flag("GB"),
    [English],
    [B1/C1],
    dot-ratings(5, 6),
    flag("FR"),
    [French],
    [B1],
    dot-ratings(3, 6),
  )

  == Fähigkeiten

  === Programmieren

  #v(0.1cm)

  #make-aside-grid(
    theme: theme,
    align: (horizon + center, horizon, left),
    columns: (auto, 1fr),
    fa-icon("python"),
    [Python],
    grid.cell(colspan:2 , skill-bar(80%)),
    fa-icon("java"),
    [Java],
    grid.cell(colspan:2 , skill-bar(45%)),
    fa-icon("rust"),
    [Rust],
    grid.cell(colspan:2 , skill-bar(10%)),
    [],
    [C++],
    grid.cell(colspan:2 , skill-bar(10%)),
  )

  === Programme

  #v(0.1cm)

  #make-aside-grid(
    theme: theme,
    align: (horizon + center, horizon, left),
    columns: (auto, 1fr),
    fa-icon("google"),
    [Docs, Sheets, Slides],
    grid.cell(colspan:2 , skill-bar(80%)),
    fa-icon("microsoft"),
    [Word, Excel, PowerPoint],
    grid.cell(colspan:2 , skill-bar(20%)),
  )
]


// Page 2
#let main-content-2 = [
  == Auszeichnungen, Preise & Errungenschaften

  === Errungenschaften

  #make-main-content-block-with-timeline(
    [2025],
    [Stipendium],
    supplement: [Studienstiftung des deutschen Volkes], // TODO Add link
    [Aufnahme in die Studienstiftung des deutschen Volkes als Stipendiat nach dem Schulvorschlag.],
    timeline-line-gap: 0pt,
  )
  #make-main-content-block-with-timeline(
    [2024],
    [Stipendium],
    supplement: [e-fellows.net], // TODO Add link
    [Verleihung des e-fellows.net Online-Stipendiums für hervorragende schulische Leistungen.],
    timeline-line-gap: 0pt,
  )
  #make-main-content-block-with-timeline(
    [2024],
    [Schülerakademie: Algorithm Engineering],
    supplement: [JGW], // TODO Add link TODO find log form
    [Teilnahme an der JGW-Schülerakademie Pappenburg I in 2022 im Rahmen der deutschen Schülerakademie am Kurs Algorithm Engineering.
    Im Kurs wurde 11 Tage lang auf Studienniveau am Thema Algorithm Engineering gearbeitet.
    Zusätzlich dazu fanden viele kursübergreifende Aktivitäten statt, an denen zahlreich teilgenommen wurde.],
    timeline-line-gap: 0pt,
  )

  === Abitur-Preise

  #make-main-content-block-with-timeline( // TODO add links
    [2024],
    [Ferry-Porsche Preis],
    supplement: [Porsche AG & Kultus Ministerium BW],
    [Preis für herausragende Leistungen in den Fächern Mathematik & Physik],
    timeline-line-gap: 0pt,
  )
  #make-main-content-block-with-timeline(
    [2024],
    [DPG-Preis],
    supplement: [Deutsche Physische Gesellschaft],
    [Anerkennung für sehr gute Leistungen im Fach Physik],
    timeline-line-gap: 0pt,
  )
  #make-main-content-block-with-timeline(
    [2024],
    [GDCh-Preis],
    supplement: [Gesellschaft Deutscher Chemiker],
    [Für den Jahrgangsbesten im Fach Chemie],
    timeline-line-gap: 0pt,
  )
  #make-main-content-block-with-timeline(
    [2024],
    [Geschichtspreis],
    supplement: [Historischen Vereins für Württembergisch Franken],
    [Preis für besondere Leistungen im Fach Geschichte],
    timeline-line-gap: 0pt,
  )

  === Wettbewerbe

  #make-main-content-block-with-timeline(
    [2024 & 2023],
    [Internationale Physik Olympiade],
    supplement: [],
    [Qualifikation & Teilnahme Runde 2],
    timeline-line-gap: 0pt,
  )
  #make-main-content-block-with-timeline(
    [2024],
    [Internationale Chemie Olympiade],
    supplement: [],
    [Qualifikation & Teilnahme Runde 2],
    timeline-line-gap: 0pt,
  )
  #make-main-content-block-with-timeline(
    [2023],
    [Bundeswettbewerb Mathematik],
    supplement: [],
    [Anerkennung],
    timeline-line-gap: 0pt,
  )
  #make-main-content-block-with-timeline(
    [2024],
    [Bundeswettbewerb Informatik],
    supplement: [],
    [Qualifikation Runde 2],
    timeline-line-gap: 0pt,
  )
  #make-main-content-block-with-timeline(
    [2023],
    [Jugendwettbewerb Informatik],
    supplement: [],
    [1.Runde 2.Preis, 2.Runde 1.Preis, 3.Runde 1.Preis],
    timeline-line-gap: 0pt,
  )
  #make-main-content-block-with-timeline(
    [2023/ 2024],
    [Geschichtswettbewerb des Bundespräsidenten],
    supplement: [],
    [Verfassen einer ca. 50 Seiten langen Facharbeit in einem zweier Team zur Abgabe am Wettbewerb im Rahmen einer besonderen Lernleistung.
    Die besondere Lernleistung wurde mit 15NP bewertet.],
    timeline-line-gap: 0pt,
  )
  #make-main-content-block-with-timeline(
    [2023],
    [Jugend debattiert],
    supplement: [],
    [
      Schulwettbewerb 1. Platz; Regionalwettbewerb 5. Platz
    ],
    timeline-line-gap: 0pt,
  )

  // Footer
]

#let aside-content-2 = [
  #make-aside-persona(
    name,
    short-description: short-description,
    theme: theme,
  )

]

#let aside-content-3 = []

#let main-content-3 = [
  == Engagement

  Ein Jahres angabe bedeutet das die Tätigkeit im gesamten Studienjahr von 01.10 bis zum 30.09 des Folgejahres durchgeführt wurden.

  === Verfasste Studierendenschaft

  #make-main-content-block-with-timeline(
    ([2024-11], [2025-09]),
    [Mitglied des Nachhaltigkeitsreferat],
    supplement: [#link("www.stuv-karlsruhe.de","StuV Karlsruhe")],
    [Maßgebliche Beteiligung an der Beschaffung eines neuen Wasserspenders für die Studierendenschaft der DHBW Karlsruhe.],
  )
  #make-main-content-block-with-timeline(
    ([2025-03], [2025-09]),
    [Mitglied des Finanzreferats],
    supplement: [#link("www.stuv-karlsruhe.de","StuV Karlsruhe")],
    [],
  )
  #make-main-content-block-with-timeline(
    [2025],
    [Stellvertretende Leitung des Finanzreferats],
    supplement: [#link("www.stuv-karlsruhe.de","StuV Karlsruhe")],
    [],
  )
  #make-main-content-block-with-timeline(
    [2025],
    [Leitung des IT-Referat],
    supplement: [#link("www.stuv-karlsruhe.de","StuV Karlsruhe")],
    [],
  )
  #make-main-content-block-with-timeline(
    [2025],
    [Mitglied des Head-Office Referat],
    supplement: [#link("www.stuv-karlsruhe.de","StuV Karlsruhe")],
    [],
  )
  #make-main-content-block-with-timeline(
    [2025],
    [Vorsitzender der Wahlversammlung],
    supplement: [#link("https://www.karlsruhe.dhbw.de/startseite.html", "DHBW Karlsruhe")],
    [],
  )
  #make-main-content-block-with-timeline(
    [2025],
    [Mitglied der QSM-Kommission],
    supplement: [#link("https://www.karlsruhe.dhbw.de/startseite.html", "DHBW Karlsruhe")],
    [],
  )
  #make-main-content-block-with-timeline(
    [2025],
    [Wahlversammlungsmandat im StuPa],
    supplement: [#link("https://studierendenschaft.dhbw-asta.de/studierendenparlament-stupa/","Studierendenparlament")],
    [],
  )
  #make-main-content-block-with-timeline(
    [2025],
    [Studentischer Vertreter in der \ Fachkommission Technik],
    supplement: [#link("https://www.dhbw.de/die-dhbw/gremien/fachkommissionen/fachkommission-technik#zusammensetzung","Fachkommission Technik")],
    [],
  )
  #make-main-content-block-with-timeline(
    [2025],
    [Studentischer Vertreter in der \ Kommission für Qualitätssicherung],
    supplement: [#link("https://www.dhbw.de/die-dhbw/gremien/kommission-fuer-qualitaetssicherung","Kommission für Qualitätssicherung")],
    [],
  )
  #make-main-content-block-with-timeline(
    [2025],
    [Studierendenwerksvertreter der \ DHBW Karlsruhe],
    supplement: [#link("https://www.sw-ka.de/","Studierendenwerk Karlsruhe")],
    [],
  )
  #make-main-content-block-with-timeline(
    [2025],
    [Beratendes Mitglied im AStA-\ Hochschulpolitik-Referat],
    supplement: [#link("https://studierendenschaft.dhbw-asta.de/allgemeiner-studierendenausschuss-asta/","Allgemeiner Studierendenausschuss")],
    [],
  )

  === Wohnheim

  #make-main-content-block-with-timeline(
    [],
    [Werkstatt Tutor],
    supplement: [#link("https://www.sw-ka.de/","Studierendenwerk Karlsruhe")],
    [],
  )
  #make-main-content-block-with-timeline(
    [],
    [Haussprecher],
    supplement: [#link("https://www.sw-ka.de/","Studierendenwerk Karlsruhe")],
    [],
  )

  === Schule

  #make-main-content-block-with-timeline(
    [],
    [Demokratieausschuss],
    supplement: [#link("https://www.lmg-crailsheim.de", "Lise-Meitner-Gymnasium Crailsheim")],
    [],
  )
  #make-main-content-block-with-timeline(
    [],
    [Nachhaltigkeitsausschuss],
    supplement: [#link("https://www.lmg-crailsheim.de", "Lise-Meitner-Gymnasium Crailsheim")],
    [],
  )
  #make-main-content-block-with-timeline(
    [],
    [Englisch Tutor],
    supplement: [#link("https://www.lmg-crailsheim.de", "Lise-Meitner-Gymnasium Crailsheim")],
    [],
  )
  #make-main-content-block-with-timeline(
    [],
    [Betreuer in der Ganztagesschule],
    supplement: [#link("https://www.lmg-crailsheim.de", "Lise-Meitner-Gymnasium Crailsheim")],
    [],
  )
  #make-main-content-block-with-timeline( // TODO link and maybe different section
    [2024],
    [Juror bei bei Jugend debattiert Schul- und Regionalwettbewerb],
    supplement: [#link("https://www.lmg-crailsheim.de", "Lise-Meitner-Gymnasium Crailsheim")],
    [],
  )


  #signature("Johannes Weinbrecht", [Johannes Weinbrecht],theme)
]

// Generate CV
#cv(
  theme: theme,
  paper: "a4",
  pages-content: (
    ("left": aside-content-1, "main": main-content-1),
    ("left": aside-content-2, "main": main-content-2),
    ("left": aside-content-3, "main": main-content-3),
  ),
)
