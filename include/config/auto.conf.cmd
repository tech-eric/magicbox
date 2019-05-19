deps_config := \
	/work/magicbox/widgets/Kconfig \
	Kconfig

include/generated/autoconf.h: \
	$(deps_config)


$(deps_config): ;
