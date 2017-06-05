CPPFLAGS = -O2 -g -Wall -Wextra

P = sdf2volume sdf2volume2 sdf2vtk mergesdf # prgrams
all: $P

B  = $(HOME)/bin
C =  $(HOME)/.udx

install: all install_bin install_conf

install_bin: ;                 cp $P                $B
install_conf: ; mkdir -p $C && cp processor.tmp.cpp $C

clean: ; -rm sdf2volume sdf2vtk mergesdf
