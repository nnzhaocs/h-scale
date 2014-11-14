#
# Makefile for the kernel software RAID and LVM drivers.
#
# Note: link order is important.  All raid personalities
# and must come before md.o, as they each initialise 
# themselves, and md.o may use the personalities when it 
# auto-initialised.
#< Common actions
LINUXROOT=/lib/modules/$(shell uname -r)/build

all:
	make -C $(LINUXROOT) SUBDIRS=`pwd` $(EXTRA_CFLAGS) KBUILD_VERBOSE=1 modules

clean:
	@rm .*.cmd -rf
	@rm .tmp* -rf
	@rm *.o -rf
	@rm *.mod.* -rf
	@rm *.ko -rf
	@echo "Delete output files"


obj-m += raid456.o
obj-m += md-mod.o

md-mod-objs     := md.o bitmap.o
raid456-objs	:= raid5.o raid6algos.o raid6recov.o raid6tables.o \
		   raid6int1.o raid6int2.o raid6int4.o \
		   raid6int8.o raid6int16.o raid6int32.o \
		   raid6altivec1.o raid6altivec2.o raid6altivec4.o \
		   raid6altivec8.o \
		   raid6mmx.o raid6sse1.o raid6sse2.o