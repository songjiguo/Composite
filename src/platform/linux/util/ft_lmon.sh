#!/bin/sh

./cos_loader \
"c0.o, ;llboot.o, ;*fprr.o, ;mm.o, ;print.o, ;boot.o, ;\
!l.o,a1;!te.o,a3;!lmon.o,a5;!lmoncli1.o, ;!lmoncli2.o, ;\
!lmonser1.o, ;!lmonser2.o, ;!va.o,a2:\
c0.o-llboot.o;\
fprr.o-print.o|[parent_]mm.o|[faulthndlr_]llboot.o;\
mm.o-[parent_]llboot.o|print.o|[faulthndlr_]llboot.o;\
boot.o-print.o|fprr.o|mm.o|llboot.o;\
va.o-fprr.o|print.o|mm.o|l.o|boot.o;\
l.o-fprr.o|mm.o|print.o;\
te.o-print.o|fprr.o|mm.o|va.o;\
lmon.o-print.o|fprr.o|mm.o|l.o|va.o|te.o;\
\
lmoncli1.o-print.o|fprr.o|va.o|l.o|mm.o|lmonser1.o|te.o|lmon.o;\
lmoncli2.o-print.o|fprr.o|va.o|l.o|mm.o|lmonser1.o|te.o|lmon.o;\
lmonser1.o-print.o|fprr.o|va.o|l.o|mm.o|lmon.o|lmonser2.o;\
lmonser2.o-print.o|fprr.o|va.o|l.o|mm.o|lmon.o\
" ./gen_client_stub
