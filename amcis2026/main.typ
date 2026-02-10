#import "@preview/ambivalent-amcis:0.1.1": amcis


#let authors_list = (
// Authors as ([Author Name], [Affiliation], "email@address.com"),
  ([Colton Grimshaw], [Brigham Young University], "alice@other.edu"),
  ([Jacob Dishman], [Brigham Young University], "bob@example.org"),
    ([Ryan Schuetzler], [Brigham Young University], "ryan.schuetzler@byu.edu"),

)


#show: amcis.with(
  title: [AI Study Buddy],
  short-title: [AI Study Buddy], // Hidden for initial submission
  // conference-line: [Thirty-second Americas Conference on Information Systems, Reno, 2026], // This is the default. Can be updated for future years
  paper-type: "Emergent Research Forum (ERF) Paper", // "Full Paper" or "Emergent Research Forum (ERF) Paper"
  abstract: [In this document we describe the formatting requirements for the Proceedings of the AMCIS Conference.  Please review this document carefully. You can use this document as a template and copy/paste your paper content here (this might be the best or easiest way). Please be sure to adhere to the formatting requirements. Submission must be made in PDF format. Abstracts should be no more than 150 words, as the abstract will also be used for the conference program.], // Hidden for initial submission
  keywords: ([Guides], [instructions], [length], [conference publications]),
  // acknowledgements: [Please do #underline[_not_] add acknowledgements to your original submission because it may identify authors. Add any acknowledgements to the revised, camera-ready version of your paper.
  //], // Hidden for initial submission
  authors: authors_list,
  bib: bibliography("./zotero.bib", style: "new-apa.csl", title: none),
  camera-ready: false, // true for camera-ready, false for initial submission
)


= Introduction
Emergent Research Forum (ERF) papers report on research that is still in progress. Like completed research, ERF papers will be submitted to a minitrack for double blind review. Upon acceptance, ERF papers will be presented by authors while interested participants gather to share ideas and discuss topics of mutual interest. ERF papers must not exceed 5 pages all-inclusive (approx. 2,500 words) and must conform to the AMCIS 2026 submission template. ERF papers that are accepted will be published in their entirety in the conference proceedings.

= Literature Review


== Social Presence Theory
awegaosdghoae

== Body Doubling
 aegnaosegdh

== Zimmerman's Self-Regulated Learning Framework
laskdfjaowefoanweoa

= Methodology
In this study, we ...

#pagebreak()

= This stuff is here as examples



== Inserting Images
Using figures in Word is a recipe for disaster. You have to do hacky workarounds like putting the figure in a table just to keep the caption and figure together. With Typst and other formatting tools, that's a thing of the past. Just use the built-in `#figure` function to easily place a figure, and automatically number it (with a caption!). You can even reference the figure with an in-text cross reference like so: Look at the cool robot in @pepper.

#figure(image("assets/pepper.jpg", width: 50%),
caption: [What a beautiful robot.]) <pepper> // The <pepper> is the name used for cross-referencing (with @pepper in the paragraph above)

== Table Style
Inserting a table in the text can work well. See Table 1 below. If you do not use this style, then you may want to adjust the vertical spacing of the text in the tables. (In Word, use Format | Paragraph… and then the Line and Page Breaks tab. Generally, text in each field of a table will look better if it has equal amounts of spacing above and below it, as in @treatments.)

// If you don't need a label for your table,
// you don't need to put it in a figure.
// Honestly Typst table formatting is kinda rough, but you can
// use online tools like https://www.latex-tables.com/?format=typst&force
// to make it slightly less horrible.
// Packages like pypst for python or gt for R can output Typst-formatted tables.
#figure(
  table(
    columns: (auto, auto, auto),
    align: (right, left, left),
  table.header([], [*Treatment 1*], [*Treatment 2*]),
  [*Setting A*], [125], [95],
  [*Setting B*], [85], [102],
  [*Setting C*], [98], [85]
  ),
  caption: [A Very Nice Table]
) <treatments> // <treatments> is again used for cross-referencing.

== References and Citations
References should be listed alphabetically by author name at the end of the paper and formatted in conformance with #link("https://apastyle.apa.org/products/publication-manual-7th-edition")[APA 7th edition]. References must be complete, i.e., include, as appropriate, volume, number, month, publisher, city and state, editors, last name and initials of all authors, page numbers, etc.  If you use EndNote, be aware that different versions of the software change the styles, creating some inconsistencies. Your references should comprise only published materials accessible to the public. Proprietary information may not be cited. In text citations can be done with @ang2024Social, @beattie2025ADHD, or #cite(<arnold2025Individual>, form: "prose"), for example. Or if you mention the authors in the text, you can do just the year as in "Schuetzler and colleagues (#cite(<cho2025Motivating>, form: "year")) may have written the best paper ever."
// The @Ahlers2013 and others are bibtex citation keys from the references.bib
