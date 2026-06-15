// ==================== 简历内容区 ====================
// 使用方法：
// 1. 主要修改本区域的姓名、求职方向、联系方式、教育、经历、项目、荣誉和自我评价。
// 2. 不需要照片时保持 `cv-photo-path = none`。
// 3. 需要照片时，先把照片放到 assets/profile.jpg，再改成：
//    #let cv-photo-path = "assets/profile.jpg"

#let cv-name = "姓名"
#let cv-role = "求职方向 / 专业方向 / 目标岗位"
#let cv-contact = "电话 | 邮箱 | GitHub / 个人主页 / 城市"
#let cv-photo-path = none

#let education = (
  (
    title: "学校名称 · 专业名称 · 学历",
    meta: "开始时间 - 结束时间",
    note: [方向：研究方向 / 主修课程 / GPA / 排名 / 相关技能],
  ),
)

#let experiences = (
  (
    title: "公司 / 组织名称 · 岗位名称",
    meta: "开始时间 - 结束时间",
    bullets: (
      [负责某业务模块或工作内容，说明个人职责和交付范围。],
      [使用某些技术、工具或流程，解决某类具体问题。],
      [用数据或结果描述产出，例如效率提升、成本降低、稳定性提升或上线交付。],
    ),
  ),
  (
    title: "公司 / 组织名称 · 岗位名称",
    meta: "开始时间 - 结束时间",
    bullets: (
      [负责某业务模块或工作内容，说明个人职责和交付范围。],
      [参与协作、联调、测试、上线或客户交付，突出工程闭环。],
      [沉淀文档、工具、流程或复用模块，提升后续开发和维护效率。],
    ),
  ),
)

#let honors = (
  [竞赛 / 奖项名称 · 获奖等级 · 角色],
  [竞赛 / 奖项名称 · 获奖等级],
  [证书 / 资格 / 语言成绩],
  [项目 / 活动 / 荣誉称号],
)

#let projects = (
  (
    title: "项目名称 A",
    tech: "技术栈 / 框架 / 工具 / 平台",
    bullets: (
      [说明项目背景、目标用户或业务场景，以及你负责的模块。],
      [说明关键实现方案，例如架构设计、核心算法、通信链路、数据处理或界面交互。],
      [说明项目结果，例如上线、交付、获奖、性能指标、用户规模或可复用成果。],
    ),
  ),
  (
    title: "项目名称 B",
    tech: "技术栈 / 框架 / 工具 / 平台",
    bullets: (
      [说明项目背景、目标用户或业务场景，以及你负责的模块。],
      [说明关键实现方案，例如架构设计、核心算法、通信链路、数据处理或界面交互。],
      [说明项目结果，例如上线、交付、获奖、性能指标、用户规模或可复用成果。],
    ),
  ),
  (
    title: "项目名称 C",
    tech: "技术栈 / 框架 / 工具 / 平台",
    bullets: (
      [说明项目背景、目标用户或业务场景，以及你负责的模块。],
      [说明关键实现方案，例如架构设计、核心算法、通信链路、数据处理或界面交互。],
      [说明项目结果，例如上线、交付、获奖、性能指标、用户规模或可复用成果。],
    ),
  ),
)

#let self-evaluation = (
  [一句话概括你的技术特点、工作习惯或专业优势。],
  [一句话概括你的协作方式、学习能力、责任心或长期发展方向。],
)

// ==================== 可调样式区 ====================
// 通常只需要改上面的内容区；如果一页放不下，再微调本区域的字号和间距。

#set document(
  title: cv-name + " - 简历",
  author: cv-name,
)

#let page-margin-x = 1.28cm
#let page-margin-y = 0.5cm

#let font-family = ("Microsoft YaHei", "Segoe UI")
#let body-size = 8.65pt
#let name-size = 18.5pt
#let job-size = 8.75pt
#let contact-size = 8.05pt
#let section-size = 12.6pt
#let entry-title-size = 9.7pt
#let entry-meta-size = 8.05pt
#let note-size = 8.25pt

#let accent = rgb("#262f99")
#let dark = rgb("#333333")
#let muted = rgb("#5d5d5d")
#let photo-fill = rgb("#eeeeee")

#let body-leading = 0.40em
#let gap = 0.80em
#let tight = 0.0em
#let section-line-height = 0.55pt
#let entry-column-gutter = 0.8em

#let bullet-leading = 0.0em
#let bullet-gap = 0pt
#let bullet-dot-width = 0.55em
#let bullet-column-gutter = 0.14em
#let bullet-dot-size = body-size

#let header-photo-column = 2.18cm
#let header-column-gutter = 0.78cm
#let photo-width = 1.82cm
#let photo-height = 2.42cm

#let honors-column-gutter = 0.9em
#let honors-row-gutter = gap

// ==================== 排版组件区 ====================
// 一般不需要修改本区域。

#set page(
  paper: "a4",
  margin: (x: page-margin-x, y: page-margin-y),
)

#set text(
  font: font-family,
  size: body-size,
  fill: dark,
)
#set par(leading: body-leading, justify: false)

#let section(title) = {
  v(gap)
  grid(
    columns: (auto, 1fr),
    column-gutter: gap,
    align: (left, horizon),
    text(size: section-size, weight: "bold", fill: accent)[#title],
    box(width: 100%, height: section-line-height, fill: dark),
  )
  v(gap)
}

#let entry(title, meta: "", meta-weight: "regular", body) = {
  block[
    #grid(
      columns: (1fr, auto),
      column-gutter: entry-column-gutter,
      align: (left, right),
      text(weight: "bold", size: entry-title-size, fill: dark)[#title],
      text(size: entry-meta-size, weight: meta-weight, fill: muted)[#meta],
    )
    #v(tight)
    #body
  ]
  v(gap)
}

#let bullets(items) = {
  set par(leading: bullet-leading, justify: false)

  for (i, item) in items.enumerate() {
    grid(
      columns: (bullet-dot-width, 1fr),
      column-gutter: bullet-column-gutter,
      align: (left, top),
      text(size: bullet-dot-size)[•],
      item,
    )

    if i < items.len() - 1 {
      v(bullet-gap)
    }
  }
}

#let inline-note(body) = text(size: note-size, fill: muted)[#body]

#let render-photo(photo-path) = {
  box(
    width: photo-width,
    height: photo-height,
    radius: 0%,
    clip: true,
    fill: photo-fill,
    if photo-path == none {
      align(center + horizon)[#text(size: 7.5pt, fill: muted)[照片]]
    } else {
      image(photo-path, width: photo-width, height: photo-height, fit: "cover")
    },
  )
}

// ==================== 简历渲染区 ====================
// 如果需要删减模块，可以删除对应的 section 和 for 循环。

#grid(
  columns: (1fr, header-photo-column),
  column-gutter: header-column-gutter,
  align: (center, right),
)[
  #align(center)[
    #text(size: name-size, weight: "bold", fill: dark)[#cv-name]
    #v(tight)
    #text(size: job-size, weight: "bold", fill: accent)[#cv-role]
    #v(tight)
    #text(size: contact-size, fill: muted)[#cv-contact]
  ]
][
  #render-photo(cv-photo-path)
]

#v(tight)

#section[教育经历]

#for item in education {
  entry(item.title, meta: item.meta)[
    #inline-note(item.note)
  ]
}

#section[实习经历]

#for item in experiences {
  entry(item.title, meta: item.meta)[
    #bullets(item.bullets)
  ]
}

#section[竞赛与荣誉]

#grid(
  columns: (1fr, 1fr),
  column-gutter: honors-column-gutter,
  row-gutter: honors-row-gutter,
  ..honors.map(item => [#text(weight: "bold")[• #item]]),
)

#section[项目经历]

#for item in projects {
  entry(item.title, meta: item.tech, meta-weight: "bold")[
    #bullets(item.bullets)
  ]
}

#section[自我评价]

#bullets(self-evaluation)
