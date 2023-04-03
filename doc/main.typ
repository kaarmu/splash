#import "../src/palette.typ"

#let code(body) = {
  set text(weight: "regular")
  show: box.with(
    fill: luma(240),
    inset: 0.4em,
    radius: 3pt,
    baseline: 0.4em,
  )
  raw(body)
}

#let get-color-value(color) = {
  let s = repr(color)
  let m = s.match(regex("(.*)\\((.*)\\)"))
  let p = (name: m.captures.at(0), value: eval(m.captures.at(1)))
  text(fill: luma(200))[
    #raw(p.name)
    #h(1fr)
    #raw(p.value)
  ]
}

#let make-title(title: none, author: none, date: none, description: none) = [
  #set align(center)

  = #title

  #v(1em)

  #text(style: "italic", description)

  #v(1em)

  / Author: #author
  / Date: #date

  #v(3em)
]

#let section(
  title: none,
  cols: 2,
  col-gutter: 2em,
  row-gutter: 2pt,
  do-page-break: true,
  name: none,
  colors,
) = {
  heading(level: 2, title + if name != none [ --- #code(name); ])
  v(1em)
  let arr = ()
  for i, pair in colors.pairs() {
    let name = pair.at(0)
    let color = pair.at(1)
    let blk = rect(
      stroke: none,
    )[
      #set align(horizon)
      #code(name)
      #h(1fr)
      #box(
        width: 3em,
        height: 1em,
        fill: color,
        stroke: luma(230),
        radius: 2pt,
        baseline: 0.25em,
      )
      #linebreak()
      #get-color-value(color)
    ]
    arr.push(blk)
  }
  grid(
    row-gutter: row-gutter,
    column-gutter: col-gutter,
    columns: (1fr,) * cols,
    ..arr,
  )
  if do-page-break { pagebreak(weak:true) }
}

// Document start

#make-title(
  title: "Palette",
  description: [ A package of color palettes for Typst. ],
  author: "Kaj Munhoz Arfvidsson",
  date: "April 3, 2023",
)

// xcolor

#section(
  cols: 3,
  title: "xcolor",
  name: "xcolor",
  palette.xcolor,
)

// Google Workspace

#section(
  title: "Google Workspace",
  name: "google",
  palette.google,
)

#section(
  title: "Google Workspace: Simple Light Theme",
  do-page-break: false,
  name: "google-simple-light",
  palette.google-simple-light,
)

#section(
  title: "Google Workspace: Simple Dark Theme",
  do-page-break: false,
  name: "google-simple-dark",
  palette.google-simple-dark,
)

#pagebreak(weak: true)

// Typst Syntax Highlighting

#section(
  title: "Typst Syntax Highlighting",
  name: "typst-highlighting",
  palette.typst-highlighting,
)

// Tailwind CSS

#section(
  cols: 3,
  title: "Tailwind CSS",
  name: "tailwind",
  palette.tailwind,
)

// Gruvbox

#section(
  cols: 3,
  title: "Gruvbox",
  name: "gruvbox",
  palette.gruvbox,
)

