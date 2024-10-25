# contrib/mdb_scoof/Makefile

MODULE_big	= mdb_scoof
OBJS = \
	$(WIN32RES) \
	mdb_scoof.o

EXTENSION = mdb_scoof
DATA = mdb_scoof--1.4.8.1.sql
PGFILEDESC = "mdb_scoof"

ifdef USE_PGXS
PG_CONFIG = pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)
else
subdir = contrib/mdb_scoof
top_builddir = ../..
include $(top_builddir)/src/Makefile.global
include $(top_srcdir)/contrib/contrib-global.mk
endif
