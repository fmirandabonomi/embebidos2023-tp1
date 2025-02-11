producido = $(wildcard output/*)

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