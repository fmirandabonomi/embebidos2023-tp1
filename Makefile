producido = $(wildcard output/*)

help:
	@echo -e "Uso: \n"\
	"make run : compilar (si es necesario) y ejecutar el programa\n"\
	"make all : compilar el programa\n"\
	"make clean: borrar archivos generados\n"\
	"make help : esta ayuda"
all: output/miprograma

run: output/miprograma
	@cd output && ./miprograma

ifneq ($(producido),)
clean:
	rm $(producido)
else
clean:

endif

output/miprograma: miprograma.c | output
	gcc $< -o $@

output:
	mkdir output