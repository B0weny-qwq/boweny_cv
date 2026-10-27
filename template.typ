// 通用组件：仅管理版式，不包含个人经历
#import "theme.typ": *

// 通过 show 规则应用页面、字体与段落设置
#let resume(name: "", body) = {
  set document(title: name + "｜个人简历", author: name)
  set page(paper: "a4", margin: page-margin)
  set text(font: ("New Computer Modern", "Noto Serif SC"), size: body-size, fill: ink, lang: "zh")
  set par(leading: leading, spacing: 3pt, justify: false)
  set list(indent: 0pt, body-indent: 9pt, tight: true, marker: [•])
  show link: it => text(fill: ink, it)
  v(1fr)
  body
  v(1fr)
}

// 横线通过块底边实现，不再用负间距压入文字
#let section(title) = block(width: 100%, above: 7pt, below: 5pt, inset: (bottom: 3pt), stroke: (bottom: 0.6pt + ink), sticky: true)[
  #text(size: 11pt, weight: "bold", fill: accent, title)
]
#let entry(title, right: none, body) = block(above: 5pt, below: 1pt, breakable: false)[
  #grid(columns: (1fr, auto), column-gutter: 8pt,
    text(size: 10.8pt, weight: "bold", title),
    if right != none { text(size: 8.8pt, fill: muted, right) },
  )
  #v(3pt)
  #body
]

// asset 为明确的文件名（含扩展名），避免按品牌名猜测格式
#let tech(asset, label) = align(center)[
  #box(width: 29pt, height: 23pt, align(center + horizon,
    image("assets/icons/" + asset, width: 28pt, height: 21pt, fit: "contain")))
  #v(2pt)
  #text(size: 7.5pt, fill: muted, label)
]


#let highlight(title, body) = block(width: 100%, inset: (left: 5pt), stroke: (left: 0.7pt + accent))[
  #block(width: 100%, fill: card-bg, inset: (y: 2pt))[
    #align(center, text(size: 9pt, weight: "bold", fill: accent, title))
  ]
  #v(3pt)
  #text(size: 9pt, body)
]

#let header(name, contact, links) = [
  #grid(columns: (auto, 1fr), column-gutter: 14pt, align: bottom,
    text(size: 21pt, weight: "bold", fill: accent, name),
    align(right, text(size: 9pt, contact)),
  )
  #v(4pt)
  #text(size: 8.8pt, links)
]