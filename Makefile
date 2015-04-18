CFLAGS+=-O3
//CFLAGS+="-DGTK_DISABLE_SINGLE_INCLUDES"
//CFLAGS+="-DGDK_DISABLE_DEPRECATED -DGTK_DISABLE_DEPRECATED"
//CFLAGS+="-DGSEAL_ENABLE"
ged: ged.o
	cc ${CFLAGS} -o ged ged.o `pkg-config --libs gtk+-3.0` 
ged.o: ged.c
	cc ${CFLAGS} -c ged.c `pkg-config --cflags gtk+-3.0`
clean:
	rm -f ged.o ged *~
