C_OBJS=pong.o
ASM_OBJS=
COMPONENT=po.o
INTERFACES=pong_test
DEPENDENCIES=sched printc lock mem_mgr base_pong timed_blk pgfault ll_log  
IF_LIB=

include ../../Makefile.subsubdir
ifeq (${ENABLE_STACK_MANAGER},1)
# $(info Using Simple Stack)
 MANDITORY_LIB=simple_stklib.o
endif
