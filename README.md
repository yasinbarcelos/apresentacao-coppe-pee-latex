# Exame de Qualificação — Yá-Sin Barcelos Mghazli

Slides do exame de qualificação de doutorado, PEE/COPPE/UFRJ.

Base: [template de apresentações do PEE](https://github.com/ggleizer/apresentacao-coppe-pee-latex)
de G. Gleizer (tema Beamer `Dresden` + logos institucionais), adaptado para
16:9 e reorganizado em módulos. O `main.tex` original do upstream está
preservado em `docs/template-original-upstream.tex`.

O remoto `origin` foi renomeado para `template`, para que nenhum `git push`
acidental vá parar no repositório do autor do modelo. Não há remoto de
escrita configurado.

## Compilar

```bash
make
```

Gera `pdf/main.pdf` — o **rascunho**, com os marcadores `[TODO: ...]`
visíveis em laranja nos pontos ainda por preencher.

```bash
make final
```

Gera `pdf/qualificacao.pdf` — a **versão de entrega**, idêntica, mas sem
nenhum marcador. É este o arquivo que vai para a banca.

Outros alvos: `make watch` (recompila a cada `Ctrl+S`) e `make clean`.

No Windows com Strawberry Perl, o executável chama-se `mingw32-make`.

## Estrutura

| Caminho | Conteúdo |
|---|---|
| `main.tex` | Preâmbulo, pacotes, `\graphicspath` e a ordem das seções |
| `qualificacao.tex` | Wrapper de uma linha usado só pelo `make final` |
| `config/tema-pee.tex` | Identidade visual: paleta, logos, rodapé, separador de seção |
| `config/metadados.tex` | Título, autor, orientadores, banca e data |
| `config/macros.tex` | `\pendente`, `\dest`, `\alerta`, `\framefigura`, `\duascolunas` |
| `secoes/*.tex` | Um arquivo por seção da apresentação |
| `figuras/` | Figuras próprias dos slides |
| `imgs/` | Logos institucionais (do template) |

As figuras da tese são alcançadas direto pelo `\graphicspath`: basta
`\includegraphics{nome_da_figura}` sem caminho, que o LaTeX procura em
`../Tese-de-Doutorado/figures/` e subdiretórios.

## Roteiro e tempo

Cada arquivo em `secoes/` abre com o tempo-alvo em comentário. O total
previsto é de cerca de 48 minutos:

| Seção | Arquivo | Alvo |
|---|---|---|
| Contexto e Problema | `01-contexto.tex` | ~8 min |
| Fundamentação | `02-fundamentacao.tex` | ~5 min |
| Estado da Arte | `03-estado-arte.tex` | ~10 min |
| Proposta | `04-proposta.tex` | ~12 min |
| Resultados Preliminares | `05-resultados.tex` | ~8 min |
| Cronograma e Trabalhos Futuros | `06-cronograma.tex` | ~5 min |

`secoes/99-backup.tex` fica depois do slide de encerramento, fora da
numeração principal: é o material de apoio para a arguição.

## Importar slides feitos fora do LaTeX

O pacote `pdfpages` já está carregado. Para trazer um diagrama desenhado no
PowerPoint ou no Inkscape, exporte em PDF e insira:

```latex
\includepdf[pages=1]{figuras/diagrama.pdf}
```

Para uma figura dentro de um slide normal, prefira `\includegraphics` com o
mesmo PDF — sai vetorial e escala sem perda.

## Sincronizar metadados

`config/metadados.tex` replica dados que também vivem em
`../Tese-de-Doutorado/main.tex` (título, autor, orientadores, banca). Se um
mudar lá, atualize aqui.

Pendência conhecida: a data está como "setembro de 2026", a partir do
`\date{09}{2026}` da tese. Confirmar o dia exato com a secretaria do PEE.
