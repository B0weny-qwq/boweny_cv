// 所有信息均为虚构占位示例，请替换成真实经历再投递
#import "template.typ": resume, header, section, entry, tech, highlight, muted
#show: resume.with(name: "你的姓名")

#header([你的姓名],
  [电话：请填写｜#link("mailto:hello@example.com")[#text("hello@example.com")]],
  [#link("https://example.com")[Portfolio: example.com] #h(10pt) | #h(10pt) GitHub: 请填写],
)
// 默认无照片；如需照片，将下面一行取消注释，并替换图片路径
// #align(right, image("assets/images/photo-placeholder.svg", width: 20mm, height: 27mm, fit: "cover"))

#section[教育经历 · Education]
#grid(columns: (1fr, auto), [*学校名称*｜专业名称｜学历｜rank 请填写], text(size: 9pt, fill: muted)[20XX—20XX])
#v(2pt)
*荣誉奖励*　填写真实奖学金、荣誉称号及年份#linebreak()
*研究方向*　填写三至五个与目标岗位相关的技术方向#linebreak()
*学生任职*　填写组织名称、职务与具体职责，无则删除

#section[能力概览 · Profile Highlights]
#v(3pt)
// 图片位置1：图标条，默认8个自制占位图，可改为自己的SVG/PNG
// 最多建议16个；先把文件放进 assets/icons，再修改文件名和下方标签
#grid(columns: (1fr,) * 8, column-gutter: 3pt,
  tech("placeholder.svg", "语言 A"), tech("placeholder.svg", "语言 B"),
  tech("placeholder.svg", "平台 A"), tech("placeholder.svg", "平台 B"),
  tech("placeholder.svg", "系统 A"), tech("placeholder.svg", "系统 B"),
  tech("placeholder.svg", "工具 A"), tech("placeholder.svg", "工具 B"),
)
#v(5pt)
#grid(columns: (1fr, 1fr), column-gutter: 12pt, row-gutter: 6pt,
  highlight([能力方向一], [填写所用工具、承担的任务及可证明的能力，避免只写“熟练掌握”等空泛描述]),
  highlight([能力方向二], [填写系统开发、通信或数据处理经验，优先展示与目标岗位相关的实践]),
  highlight([工程方法与工具], [填写构建、调试、测试与文档方法，说明如何定位问题及提高工程可维护性]),
  highlight([协作与交付], [填写分工、接口协作及交付内容，不虚构团队规模、性能或商业指标]),
)

#section[工作经历 · Work Experience]
#entry([公司名称｜岗位名称（实习/全职）], right: [20XX.XX—20XX.XX])[
- 描述业务场景和本人负责的模块，明确个人贡献与团队工作的边界
- 描述使用的技术、解决的问题以及可核实的交付结果，不填写占位的夸张指标
]

#section[重点项目 · Selected Projects]
#entry([项目一｜最有岗位相关性的项目], right: [角色/时间])[
- *背景与职责：*说明项目目标、应用场景和个人负责范围，突出独立承担的部分
- *技术实现：*说明核心架构、接口协议及关键模块，避免罗列无关工具名称
- *问题解决：*描述一个具体问题、定位方法与方案选择，交代技术取舍
- *验证与结果：*填写测试方式和可核实结果；没有数据时写清交付功能而非编造数字
]
#entry([项目二｜系统开发或工程实践], right: [角色/时间])[
- *方案设计：*交代硬件或软件分层、依赖关系及边界，说明本人设计的部分
- *模块实现：*填写驱动、协议、任务调度或界面开发等真实内容
- *调试验证：*填写日志、仪器、测试脚本与问题复现流程，突出工程闭环
- *项目交付：*填写文档、源码、样机或测试报告等真实交付物
]
#entry([项目三｜自动化与工具开发], right: [角色/时间])[
- *需求分析：*说明重复工作与工具目标，展示问题来源而不是泛化口号
- *工具实现：*填写输入输出、配置方式、异常处理与可复用接口
- *验证方式：*说明测试用例、日志检查或回归策略，确保结论有证据
]
#entry([项目四｜补充技术项目], right: [角色/时间])[
- *关键工作：*填写与岗位相关的技术要点；篇幅不足时优先删除低相关项目
- *项目结果：*填写可证明的结果，保持句子简洁，不用缩小字号硬塞内容
]

#section[竞赛与荣誉 · Awards & Honors]
// 等宽双列，每列左对齐，优先技术类竞赛
#text(size: 9pt)[
#grid(columns: (1fr, 1fr), column-gutter: 12pt, row-gutter: 5pt,
  [技术竞赛名称一 · *真实奖项*], [创新竞赛名称一 · *真实奖项*],
  [技术竞赛名称二 · *真实奖项*], [创新竞赛名称二 · *真实奖项*],
  [技术竞赛名称三 · *真实奖项*], [其他荣誉名称 · *真实奖项*],
)
]
