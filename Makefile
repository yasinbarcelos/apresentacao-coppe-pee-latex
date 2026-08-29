# =====================================================================
# Qualificação — PEE/COPPE/UFRJ
#
#   make          rascunho, com os marcadores [TODO] visíveis
#   make final    versão de entrega, sem marcadores -> pdf/qualificacao.pdf
#   make watch    recompila a cada alteração salva
#   make clean    remove os intermediários
# =====================================================================

build:
	latexmk -pdf main.tex

final:
	latexmk -pdf qualificacao.tex
	@echo ">> pdf/qualificacao.pdf gerado sem marcadores [TODO]"

watch:
	latexmk -pdf -pvc main.tex

clean:
	latexmk -c
	rm -f pdf/main.pdf pdf/qualificacao.pdf

.PHONY: build final watch clean
