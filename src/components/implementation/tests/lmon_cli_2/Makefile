C_OBJS=logmon_cli2.o
ASM_OBJS=
COMPONENT=lmoncli2.o
INTERFACES=
DEPENDENCIES=periodic_wake sched printc lock mem_mgr lmon_ser1 timed_blk ll_log  
IF_LIB=

include ../../Makefile.subsubdir
ifeq (${ENABLE_STACK_MANAGER},1)
# $(info Using Simple Stack)
 MANDITORY_LIB=simple_stklib.o
endif
