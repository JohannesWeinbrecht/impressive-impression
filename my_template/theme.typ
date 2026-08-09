// Standard Blue
//#let _primary-accent-color = rgb("#266590")
//#let _secondary-accent-color = rgb("#115484")

// Nice Purple
// #let _primary-accent-color = rgb("#3A015C")
// #let _secondary-accent-color = rgb("#3a015c")
// Some purples: 3a015c, 3a015c, 3a015c, 3a015c

// Dark red
//#let _primary-accent-color = rgb("#851D11")
//#let _secondary-accent-color = rgb("#8F2E25")


// Profile Pic theme
#let _primary-accent-color = rgb("#5B2131")
#let _secondary-accent-color = rgb("#3D262C")

#let _primary-text-color = rgb("#000000")
#let _secondary-text-color = rgb("#333333")
#let _faint-text-color = rgb("#666666")
#let _aside-background-color = rgb("#e7e7e7")
#let _aside-text-color = _secondary-text-color

#let theme = (
  name: "Forty Seconds",
  margin: 0.6cm,
  main-text: (
    font: "Open Sans",
    size: 10pt,
    style: "normal",
    weight: "regular",
    fill: _primary-text-color,
  ),
  base-text: (
    font: "Open Sans",
    size: 10pt,
    style: "normal",
    weight: "medium",
    fill: _primary-text-color,
  ),
  main-heading-text: (
    size: 14pt,
    weight: "semibold",
    fill: _primary-accent-color,
  ),
  main-heading-block: (
    below: 0.4cm,
    above: 0.5cm,
  ),
  main-heading-line-enable: true,
  main-heading-line-gap: 10pt,
  main-heading-line-opposite-gap: 10pt,
  main-heading-line-thickness: 3pt,
  main-heading-line-cap: "round",
  main-heading-line-opposite-cap: "butt",
  main-subheading-text: (
    size: 11pt,
    weight: "semibold",
    fill: _primary-text-color,
  ),
  main-subheading-block:(
    below: 0.4cm,
    above: 0.4cm,
  ),
  main-subsubheading-text: (
    size: 10pt,
    weight: "medium",
    fill: _primary-text-color,
  ),
  main-subsubheading-block:(
    below: 0.4cm,
    above: 0.3cm,
  ),
  aside-side: "left",
  primary-accent-color: _primary-accent-color,
  secondary-accent-color: _secondary-accent-color,
  primary-text-color: _primary-text-color,
  secondary-text-color: _secondary-text-color,
  faint-text-color: _faint-text-color,
  profile-image-enabled: true,
  profile-image-size: 80%,
  profile-image-stroke: 2pt + _primary-accent-color,
  profile-image-radius: 50%,
  aside-width: 7cm,
  aside-background-color: _aside-background-color,
  aside-name-text: (
    font: "Open Sans",
    weight: "semibold",
    size: 20pt,
    style: "normal",
    fill: _secondary-accent-color,
  ),
  aside-pronouns-text: (
    font: "Open Sans",
    weight: "regular",
    size: 8pt,
    style: "italic",
    fill: _faint-text-color,
  ),
  aside-text: (
    font: "Open Sans",
    weight: "medium",
    size: 11pt,
    style: "normal",
    fill: _aside-text-color,
  ),
  aside-grid-first-column-width: 20pt,
  aside-short-description-text: (
    font: "Open Sans",
    weight: "semibold",
    size: 12pt,
    style: "normal",
    fill: _secondary-text-color,
  ),
  aside-heading-text: (
    font: "Open Sans",
    weight: "semibold",
    size: 14pt,
    style: "normal",
    fill: _secondary-accent-color,
  ),
  aside-heading-line-enable: true,
  aside-heading-line-gap: 10pt,
  aside-heading-line-opposite-gap: 10pt,
  aside-heading-line-thickness: 2pt,
  aside-heading-line-cap: "round",
  aside-heading-line-opposite-cap: "butt",

  aside-pill-box-inner: (
    fill: _aside-background-color.lighten(75%),
    outset: 3.5pt,
    radius: 4pt,
    stroke: 0.75pt + _aside-background-color.darken(25%),
  ),
  aside-pill-pad: (
    x: 5pt,
    y: 3pt,
  ),
  gutter-stroke: none,
  gutter-margin: 0.5cm,
)
