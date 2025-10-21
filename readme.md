# 环境和编译

1. 模板中使用了FandolSong，FandolHei，FandolKai字体，经测试在texlive 2019中编译会报错，建议使用texlive 2025。
2. 编译命令
```bash
latexmk -xelatex main.tex
```
or
```bash
make clean && make
```
