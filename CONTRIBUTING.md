# Contributing

欢迎提交 issue 或 pull request 改进模板。

## 开发流程

1. 修改 `cv.typ` 或文档。
2. 本地编译检查：

```powershell
typst compile cv.typ cv.pdf
```

3. 确认模板仍然适合作为通用简历模板，不包含个人隐私信息。
4. 提交 PR。

## 内容原则

- 默认内容使用占位示例，不写真实个人信息。
- 保持单文件使用体验，避免引入复杂依赖。
- 样式改动应优先保留一页 A4 的可读性。
