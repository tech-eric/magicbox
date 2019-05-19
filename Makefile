include include/config/auto.conf

CC := gcc
LD := ld


TARGET=magicbox
USER_CONFIG ?= .config
PWD := $(shell pwd)
INCLUDE := -I/work/magicbox/include/config

export USER_CONFIG
export PWD
export INCLUDE

src := core/  widgets/

src := $(patsubst %/, $(PWD)/%/build-in.o, $(src))

all:$(TARGET)

$(TARGET): $(src)
	$(CC) -o $@ $^

%/build-in.o:
	@echo "Entering directory $(patsubst %/build-in.o, %, $@)"
	@make --no-print-directory -f scripts/Makefile.build obj=$@

menuconfig:
	scripts/mconf  Kconfig

savedefconfig:
	scripts/conf --savedefconfig defconfig  Kconfig

%_defconfig:
	cp configs/$@ .config
	@rm -rf include/generated/autoconf.h
	scripts/conf --savedefconfig include/config/auto.conf Kconfig
	scripts/conf --silentoldconfig include/generated/autoconf.h Kconfig
test:
	make -f Makefile.build obj=menutest

help:
	echo obj-$(config_text_tool)

clean:
	rm -rf $(TARGET) *.o

