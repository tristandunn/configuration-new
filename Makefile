SUBDIRS := $(wildcard plug-ins/*/.)
TARGETS := all clean install uninstall update

$(TARGETS): $(SUBDIRS)

$(SUBDIRS):
	$(MAKE) -C $@ $(MAKECMDGOALS)

ifndef VERBOSE
.SILENT:
endif

.PHONY: all install $(SUBDIRS)
