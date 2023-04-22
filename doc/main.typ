#import "../src/palettes.typ"
#import "util.typ": *

// Document start

#make-title(
  title: "Palettes",
  description: [ A library of color palettes for Typst. ],
  author: "Kaj Munhoz Arfvidsson",
  date: "April 22, 2023",
)

#outline(target: heading.where(level: 3))
#pagebreak()

#show heading.where(level: 2): body => {
  pagebreak(weak: true)
  body
}

// xcolor

#section(
  cols: 3,
  title: "xcolor",
  name: "xcolor",
  palettes.xcolor,
)

== Paul Tol's Colors

The following section includes palettes created Paul Tol. `typst-palettes` only
package his work for ease-of-use in Typst.

#section(
  cols: 4,
  title: "Tol's Bright",
  description: [
    Bright qualitative colour scheme that is colour-blind safe. The main scheme
    for lines and their labels.
  ],
  name: "tol-bright",
  palettes.tol-bright,
  do-page-break: false,
)

#section(
  cols: 4,
  title: "Tol's High-contrast",
  description: [
    High-contrast qualitative colour scheme, an alternative to the bright
    scheme of Fig. 1 that is colour-blind safe and optimized for contrast. The
    samples underneath are shades of grey with the same luminance; this scheme
    also works well for people with monochrome vision and in a monochrome
    printout.
  ],
  name: "tol-high-contrast",
  palettes.tol-high-contrast,
  do-page-break: false,
)

#section(
  cols: 4,
  title: "Tol's Vibrant",
  description: [
    Vibrant qualitative colour scheme, an alternative to the bright scheme of
    Fig. 1 that is equally colour-blind safe. It has been designed for data
    visualization framework TensorBoard, built around their signature orange
    FF7043. That colour has been replaced here to make it print-friendly.
  ],
  name: "tol-vibrant",
  palettes.tol-vibrant,
  do-page-break: false,
)

#pagebreak(weak: true)

#section(
  cols: 4,
  title: "Tol's Muted",
  description: [
    Muted qualitative colour scheme, an alternative to the bright scheme of
    Fig. 1 that is equally colour-blind safe with more colours, but lacking a
    clear red or medium blue. Pale grey is meant for bad data in maps.
  ],
  name: "tol-muted",
  palettes.tol-muted,
  do-page-break: false,
)

#section(
  cols: 3,
  title: "Tol's Medium-contrast",
  description: [
    Medium-contrast qualitative colour scheme, an alternative to the
    high-contrast scheme of Fig. 2 that is colour-blind safe with more colours.
    It is also optimized for contrast to work in a monochrome printout, but the
    differences are inevitably smaller. It is designed for situations needing
    colour pairs, shown by the three rectangles, with the lower half in the
    greyscale equivalent.
  ],
  name: "tol-medium-contrast",
  palettes.tol-medium-contrast,
  do-page-break: false,
)

#section(
  cols: 3,
  title: "Tol's Light",
  description: [
    Light qualitative colour scheme that is reasonably distinct in both normal
    and colour-blind vision. It was designed to fill labelled cells with more
    and lighter colours than contained in the bright scheme of Fig. 1, using
    more distinct colours than that in the pale scheme of Fig. 6 (top), but
    keeping black labels clearly readable (see Fig. 10). However, it can also
    be used for general qualitative maps.
  ],
  name: "tol-light",
  palettes.tol-light,
  do-page-break: false,
)

== Google Workspace

#section(
  title: "Google Slides",
  name: "google",
  palettes.google,
)

#section(
  title: "Google Slides: Simple Light Theme",
  name: "google-simple-light",
  palettes.google-simple-light,
  do-page-break: false,
)

#section(
  title: "Google Slides: Simple Dark Theme",
  name: "google-simple-dark",
  palettes.google-simple-dark,
  do-page-break: false,
)

== University profiles

// KTH

#section(
  cols: 2,
  title: "KTH (RGB)",
  name: "kth-rgb",
  palettes.kth-rgb,
  do-page-break: false,
)

#section(
  cols: 2,
  title: "KTH (CMYK)",
  name: "kth-cmyk",
  palettes.kth-cmyk,
)

== Misc

// Typst Syntax Highlighting

#section(
  title: "Typst Syntax Highlighting",
  name: "typst-highlighting",
  palettes.typst-highlighting,
)

// Gruvbox

#section(
  cols: 3,
  title: "Gruvbox",
  name: "gruvbox",
  palettes.gruvbox,
)

// Tailwind CSS

#section(
  cols: 3,
  title: "Tailwind CSS",
  name: "tailwind",
  palettes.tailwind,
)

