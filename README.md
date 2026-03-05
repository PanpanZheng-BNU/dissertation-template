# 秀丽隐杆线虫的神经系统发育研究 (Graduation Dissertation)

**Author:** 郑盼盼 (Zheng Panpan)  
**Department:** 系统科学学院 (School of Systems Science), Beijing Normal University  
**Supervisor:** 刘鹤 (Prof. Liu He)  
**Date:** 2026-03-01

## 简介 (Introduction)

本仓库存储了我的毕业论文《秀丽隐杆线虫的神经系统发育研究》的 LaTeX 源码。该论文基于 [BNUThesis](https://github.com/BNU-Thesis-Group/bnuthesis) 模版编写。

## 目录结构 (Directory Structure)

- `manuscript.tex`: 论文主文件 (Main entry point)
- `bnusetup.tex`: 论文基本配置 (Basic configuration)
- `data/`: 论文各章节内容 (Chapters and sections)
  - `abstract.tex`: 摘要
  - `chap01.tex` - `chap04.tex`: 正文章节
  - `acknowledgements.tex`: 致谢
  - `resume.tex`: 个人简历
- `figures/`: 图片资源 (Figures and images)
- `ref/`: 参考文献 (Bibliography)

## 编译指南 (Build Instructions)

本项目推荐使用 TeX Live 发行版进行编译。

### 使用 Latexmk (推荐)

在项目根目录下运行以下命令：

```bash
latexmk -xelatex manuscript.tex
```

编译完成后，生成的 PDF 文件为 `manuscript.pdf`。

### 清理中间文件

```bash
latexmk -c
```

