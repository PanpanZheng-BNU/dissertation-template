# 北京师范大学学位论文 LaTeX 模板 (BNUThesis)

本项目是北京师范大学（Beijing Normal University）学位论文的 LaTeX 模板。它旨在帮助学生更轻松地撰写符合学校排版规范的学术论文（包括本科、硕士、博士）。

## 🌟 主要功能与特点

- **全学位支持**：支持本科生（bachelor）、硕士生（master）和博士生（doctor）的论文格式。
- **多输出模式**：支持 `electronic`（电子版，无空白页）和 `print`（打印版，自动插入空白页以便双面打印）两种输出模式。
- **多种参考文献样式**：
  - `bnuthesis-numeric`：顺序编码制（GB/T 7714-2015）。
  - `bnuthesis-author-year`：著者-出版年制。
  - `bnuthesis-bachelor`：专门针对本科生的参考文献格式。
- **丰富的配置项**：通过 `bnusetup.tex` 可灵活配置论文标题、作者、导师、学科门类等信息。
- **构建系统支持**：提供了 `Makefile`、`latexmk` 以及对 `Tectonic` 的支持。
- **Markdown 支持**：集成了 `markdown` 宏包，允许在 LaTeX 中直接编写 Markdown 内容。

## 🛠️ 环境要求

- **TeX 发行版**：推荐安装 [TeX Live](https://www.tug.org/texlive/)（建议安装最新版本，并选择完整版安装）。
- **编译引擎**：必须使用 `XeLaTeX` 进行编译，以确保中文字体的正确显示。
- **字体**：模板默认使用 `fandol` 字体集。建议在最终稿编译时，在 Windows 环境下使用 `windows` 字体集以获得最佳排版效果。

## 🚀 快速开始

### 1. 修改基本配置
打开 `bnusetup.tex`，根据你的实际情况修改论文的基本信息（标题、作者、学院等）。

### 2. 组织正文内容
论文的主文件是 `manuscript.tex`。各章节内容建议按顺序存放在 `data/` 目录下（如 `chap01.tex`, `chap02.tex` 等），并在 `manuscript.tex` 中通过 `\input` 命令引入。

### 3. 编译论文
你可以选择以下几种方式之一进行编译：

#### 使用 Latexmk (推荐)
在终端中运行：
```bash
latexmk -xelatex manuscript.tex
```

#### 使用 Makefile
如果安装了 `make` 工具和 `tectonic`，可以直接运行：
```bash
make thesis
```

#### 使用 IDE
在 TeXStudio、TeXworks 或 VS Code (with LaTeX Workshop) 中，将编译引擎设置为 `XeLaTeX`，并指定 `manuscript.tex` 为主文件。

## 📂 目录结构

```text
.
├── manuscript.tex      # 论文主文件 (入口文件)
├── bnusetup.tex        # 论文基本配置与宏包加载
├── bnuthesis.cls       # 模板类文件 (由 dtx 生成)
├── data/               # 存放各章节正文、摘要、致谢等
│   ├── abstract.tex    # 中英文摘要
│   ├── chap01.tex      # 第一章
│   └── acknowledgements.tex # 致谢
├── figures/            # 存放图片资源
├── ref/                # 存放参考文献数据库 (.bib 文件)
└── build/              # 编译过程中产生的中间文件目录
```

## 📝 注意事项

- **封面更新**：修改 `bnusetup.tex` 中的信息后，封面会自动更新。
- **授权页**：签字扫描后的授权文件（如 `scan-copyright.pdf`）应放在 `figures/` 目录下，并在 `manuscript.tex` 中通过 `\copyrightpage[file=...]` 引用。
- **参考文献**：支持 BibTeX 和 BibLaTeX 两种方式，默认在 `bnusetup.tex` 中配置 BibTeX 风格。

## 📄 许可证

本项目基于 [BNUThesis](https://github.com/BNU-Thesis-Group/bnuthesis) 开发。模板本身的使用遵循 [LPPL 1.3c](http://www.latex-project.org/lppl.txt) 协议。

---
*如有任何疑问或建议，请参考校内排版指南或联系模板维护者。*
