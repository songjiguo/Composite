C_OBJS=ping.o
ASM_OBJS=
COMPONENT=pi.o
INTERFACES=
DEPENDENCIES=lock sched printc  mem_mgr pong_test ll_log valloc
IF_LIB=

include ../../Makefile.subsubdir
ifeq (${ENABLE_STACK_MANAGER},1)
# $(info Using Simple Stack)
 MANDITORY_LIB=simple_stklib.o
endif
