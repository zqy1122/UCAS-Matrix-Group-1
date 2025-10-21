# 定义目标文件和编译工具
TARGET = main
TEX = xelatex
BIB = biber  # 如果需要处理参考文献，可以保留这个变量

# 默认目标：编译生成PDF
all: $(TARGET).pdf

# 第一次编译：生成aux等辅助文件
$(TARGET).aux: $(TARGET).tex
	$(TEX) $(TARGET).tex

# 第二次编译：确保交叉引用正确
$(TARGET).pdf: $(TARGET).aux
	$(TEX) $(TARGET).tex

# 清理中间文件和PDF
clean:
	rm -f $(TARGET).aux $(TARGET).log $(TARGET).out $(TARGET).toc \
	      $(TARGET).lof $(TARGET).lot $(TARGET).bbl $(TARGET).blg \
	      $(TARGET).run.xml $(TARGET).synctex.gz

# 只清理PDF文件
distclean: clean
	rm -f $(TARGET).pdf

# 伪目标声明，防止与同名文件冲突
.PHONY: all clean distclean