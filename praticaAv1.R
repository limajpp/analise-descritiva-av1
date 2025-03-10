# Criando as tabelas de frequência simples e relativas da questão 1:
tabelaSimplesNatureza = table(Base2025_1$Natureza)
tabelaRelativaNatureza = prop.table(tabelaSimplesNatureza)
tabelaRelativaNaturezaArredondada = round(tabelaRelativaNatureza, 4)
tabelaSimplesNatureza
tabelaRelativaNaturezaArredondada

tabelaSimplesMeioEmpregado = table(Base2025_1$`Meio Empregado`)
tabelaRelativaMeioEmpregado = prop.table(tabelaSimplesMeioEmpregado)
tabelaRelativaMeioEmpregadoArredondada = round(tabelaRelativaMeioEmpregado, 4)
tabelaSimplesMeioEmpregado
tabelaRelativaMeioEmpregadoArredondada

tabelaSimplesGenero = table(Base2025_1$Gênero)
tabelaRelativaGenero = prop.table(tabelaSimplesGenero)
tabelaRelativaGeneroArredondada = round(tabelaRelativaGenero, 4)
tabelaSimplesGenero
tabelaRelativaGeneroArredondada

tabelaSimplesEscolaridadeDaVitima = table(Base2025_1$`Escolaridade da Vítima`)
tabelaRelativaEscolaridadeDaVitima = prop.table(tabelaSimplesEscolaridadeDaVitima)
tabelaRelativaEscolaridadeDaVitimaArredondada = round(tabelaRelativaEscolaridadeDaVitima, 4)
tabelaSimplesEscolaridadeDaVitima
tabelaRelativaEscolaridadeDaVitimaArredondada

tabelaSimplesRacaDaVitima = table(Base2025_1$`Raça da Vítima`)
tabelaRelativaRacaDaVitima = prop.table(tabelaSimplesRacaDaVitima)
tabelaRelativaRacaDaVitimaArredondada = round(tabelaRelativaRacaDaVitima, 4)
tabelaSimplesRacaDaVitima
tabelaRelativaRacaDaVitimaArredondada

tabelaSimplesDiaDaSemana = table(Base2025_1$`Dia da Semana`)
tabelaRelativaDiaDaSemana = prop.table(tabelaSimplesDiaDaSemana)
tabelaRelativaDiaDaSemanaArredondada = round(tabelaRelativaDiaDaSemana, 4)
tabelaSimplesDiaDaSemana
tabelaRelativaDiaDaSemanaArredondada

library(xtable)

tabela_completa <- data.frame(
  Variável = rep(c("Natureza", "Meio Empregado", "Gênero", 
                   "Escolaridade da Vítima", "Raça da Vítima", "Dia da Semana"), 
                 times = c(length(tabelaSimplesNatureza),
                           length(tabelaSimplesMeioEmpregado),
                           length(tabelaSimplesGenero),
                           length(tabelaSimplesEscolaridadeDaVitima),
                           length(tabelaSimplesRacaDaVitima),
                           length(tabelaSimplesDiaDaSemana))),
  Categoria = c(names(tabelaSimplesNatureza), 
                names(tabelaSimplesMeioEmpregado), 
                names(tabelaSimplesGenero),
                names(tabelaSimplesEscolaridadeDaVitima), 
                names(tabelaSimplesRacaDaVitima),
                names(tabelaSimplesDiaDaSemana)),
  FrequênciaAbs = c(as.numeric(tabelaSimplesNatureza), 
                 as.numeric(tabelaSimplesMeioEmpregado), 
                 as.numeric(tabelaSimplesGenero),
                 as.numeric(tabelaSimplesEscolaridadeDaVitima), 
                 as.numeric(tabelaSimplesRacaDaVitima),
                 as.numeric(tabelaSimplesDiaDaSemana)),
  FrequênciaRel = c(as.numeric(tabelaRelativaNatureza), 
                as.numeric(tabelaRelativaMeioEmpregado), 
                as.numeric(tabelaRelativaGenero),
                as.numeric(tabelaRelativaEscolaridadeDaVitima), 
                as.numeric(tabelaRelativaRacaDaVitima),
                as.numeric(tabelaRelativaDiaDaSemana))
)

tabela_completa$FrequênciaRel = round(tabela_completa$FrequênciaRel, 4)

print(xtable(tabela_completa, caption = "Tabela de Frequências e Proporções"),
      include.rownames = FALSE, file = "C:/Users/joaop/OneDrive/Documentos/Metodos Quantitativos/Prática AV1/tabela_frequencias.tex")

