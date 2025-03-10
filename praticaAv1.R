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

# Criando a tabela final de frequências da questão 1 e transformando em ".tex"
library(xtable)

tabelaCompleta = data.frame(
  Variável = rep(c("Natureza", "Meio Empregado", "Gênero", 
                   "Escolaridade da Vitima", "Raça da Vítima", "Dia da Semana"), 
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

tabelaCompleta$FrequênciaRel = round(tabelaCompleta$FrequênciaRel, 4)

print(xtable(tabelaCompleta, caption = "Tabela de Frequências"),
      include.rownames = FALSE, file = "C:/Users/joaop/OneDrive/Documentos/Metodos Quantitativos/Prática AV1/tabelaq1.tex")

# Criando as tabelas cruzadas meioEmpregado vs. genero da questão 2
tabelaMeioGenero = table(Base2025_1$`Meio Empregado`, Base2025_1$`Gênero`)
tabelaMeioGeneroRelativa = prop.table(tabelaMeioGenero)
tabelaMeioGeneroRelativaArredondada = round(tabelaMeioGeneroRelativa, 4)
tabelaMeioGenero
tabelaMeioGeneroRelativaArredondada

# Criando as tabelas cruzadas escolaridadeDaVitima vs. racaDaVitima da questão 2
tabelaEscolaridadeRaca = table(Base2025_1$`Escolaridade da Vítima`, Base2025_1$`Raça da Vítima`)
tabelaEscolaridadeRacaRelativa = prop.table(tabelaEscolaridadeRaca)
tabelaEscolaridadeRacaRelativaArredondada = round(tabelaEscolaridadeRacaRelativa, 4)
tabelaEscolaridadeRaca
tabelaEscolaridadeRacaRelativa
tabelaEscolaridadeRacaRelativaArredondada

# Convertendo tabelas para data.frames e mantendo apenas os nomes das categorias como primeira coluna(questão 2)
dfMeioGenero <- as.data.frame.matrix(tabelaMeioGenero)
dfMeioGenero <- cbind(rownames(dfMeioGenero), dfMeioGenero)
colnames(dfMeioGenero)[1] <- "" 

dfMeioGeneroRelativa <- as.data.frame.matrix(tabelaMeioGeneroRelativaArredondada)
dfMeioGeneroRelativa <- cbind(rownames(dfMeioGeneroRelativa), dfMeioGeneroRelativa)
colnames(dfMeioGeneroRelativa)[1] <- ""

dfEscolaridadeRaca <- as.data.frame.matrix(tabelaEscolaridadeRaca)
dfEscolaridadeRaca <- cbind(rownames(dfEscolaridadeRaca), dfEscolaridadeRaca)
colnames(dfEscolaridadeRaca)[1] <- ""

dfEscolaridadeRacaRelativa <- as.data.frame.matrix(tabelaEscolaridadeRacaRelativaArredondada)
dfEscolaridadeRacaRelativa <- cbind(rownames(dfEscolaridadeRacaRelativa), dfEscolaridadeRacaRelativa)
colnames(dfEscolaridadeRacaRelativa)[1] <- ""

# Gerando as tabelas LaTeX corrigidas da questão 2
print(xtable(dfMeioGenero, caption = "Tabela Cruzada: Meio Empregado vs Gênero"),
      include.rownames = FALSE, file = "C:/Users/joaop/OneDrive/Documentos/Metodos Quantitativos/Prática AV1/tabelaMeioGeneroq2.tex")
print(xtable(dfMeioGeneroRelativa, caption = "Tabela Cruzada Relativa: Meio Empregado vs Gênero"),
      include.rownames = FALSE, file = "C:/Users/joaop/OneDrive/Documentos/Metodos Quantitativos/Prática AV1/tabelaMeioGeneroRelativaq2.tex")

print(xtable(dfEscolaridadeRaca, caption = "Tabela Cruzada: Escolaridade da Vítima vs Raça da Vítima"),
      include.rownames = FALSE, file = "C:/Users/joaop/OneDrive/Documentos/Metodos Quantitativos/Prática AV1/tabelaEscolaridadeRacaq2.tex")
print(xtable(dfEscolaridadeRacaRelativa, caption = "Tabela Cruzada Relativa: Escolaridade da Vítima vs Raça da Vítima"),
      include.rownames = FALSE, file = "C:/Users/joaop/OneDrive/Documentos/Metodos Quantitativos/Prática AV1/tabelaEscolaridadeRacaRelativaq2.tex")
