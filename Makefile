include include/config/auto.conf

CC := gcc
LD := ld

TARGET		:=magicbox
ROOTPATH 	:= $(shell pwd)
USER_CONFIG ?= $(ROOTPATH)/.config
INCLUDE := -I$(ROOTPATH)/include/config -I$(ROOTPATH)/include/generated

export USER_CONFIG
export ROOTPATH
export INCLUDE

SRCS := core/ widgets/

.PHONY: all pre clean

#Virtual Final target
all: pre $(TARGET)
	@echo "$(TARGET) is Ready"

#Recursive compile start
pre:
	@for d in `echo $(SRCS)`; do\
		make -C $$d -f Makefile -f $(ROOTPATH)/scripts/Makefile.build objs=$$d all; \
	done

#Generate final app
$(TARGET): $(patsubst %/, %/build-in.o, $(SRCS))
	gcc -o $@ $^

menuconfig:
	scripts/mconf  Kconfig
	@rm -rf include/generated/autoconf.h
	scripts/conf --savedefconfig include/config/auto.conf Kconfig
	scripts/conf --silentoldconfig include/generated/autoconf.h Kconfig

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

#Clean all the compiling generations
clean:
	@for d in `echo $(SRCS)`; do\
		make -C $$d -f Makefile -f $(ROOTPATH)/scripts/Makefile.build clean; \
		done
	rm -rf $(TARGET)
