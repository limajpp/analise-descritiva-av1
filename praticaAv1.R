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

gerar_tabela_frequencia <- function(var, nome_arquivo, nome_variavel) {
  tabelaSimples <- table(var)
  tabelaRelativa <- prop.table(tabelaSimples)
  tabelaRelativaArredondada <- round(tabelaRelativa, 4)
  
  tabelaFinal <- data.frame(
    Categoria = names(tabelaSimples),
    FrequênciaAbs = as.numeric(tabelaSimples),
    FrequênciaRel = as.numeric(tabelaRelativaArredondada)
  )
  
  print(xtable(tabelaFinal, caption = paste("Tabela de Frequências -", nome_variavel)),
        include.rownames = FALSE, file = paste0("C:/Users/joaop/OneDrive/Documentos/Metodos Quantitativos/Prática AV1/q1/", nome_arquivo, ".tex"))
}
gerar_tabela_frequencia(Base2025_1$Natureza, "tabelaNaturezaq1", "Natureza")
gerar_tabela_frequencia(Base2025_1$`Meio Empregado`, "tabelaMeioEmpregadoq1", "Meio Empregado")
gerar_tabela_frequencia(Base2025_1$Gênero, "tabelaGeneroq1", "Gênero")
gerar_tabela_frequencia(Base2025_1$`Escolaridade da Vítima`, "tabelaEscolaridadeq1", "Escolaridade da Vítima")
gerar_tabela_frequencia(Base2025_1$`Raça da Vítima`, "tabelaRacaq1", "Raça da Vítima")
gerar_tabela_frequencia(Base2025_1$`Dia da Semana`, "tabelaDiaDaSemanaq1", "Dia da Semana")


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

# Construindo os gráficos de setor da questão 3
pie(table(Base2025_1$Gênero), 
    col = c("blue", "pink"), 
    main = "Distribuição do Gênero")

pie(table(Base2025_1$`Meio Empregado`), 
    col = c("red", "green", "yellow"), 
    main = "Distribuição do Meio Empregado")

# Montando os gráficos de barra da questão 4
barplot(table(Base2025_1$`Dia da Semana`), 
        xlab = "Dia da Semana", 
        ylab = "Quantidade", 
        ylim = c(0, max(table(Base2025_1$`Dia da Semana`)) * 1.2), 
        col = c("blue", "red", "green", "yellow", "purple", "orange", "pink"), 
        main = "Frequência por Dia da Semana")

barplot(table(Base2025_1$`Escolaridade da Vítima`), 
        xlab = "Escolaridade", 
        ylab = "Quantidade", 
        ylim = c(0, max(table(Base2025_1$`Escolaridade da Vítima`)) * 1.2), 
        col = c("darkred", "blue", "green", "orange", "purple", "gray"), 
        main = "Frequência por Escolaridade da Vítima")

# Construindo os gráficos por linha da questão 5
Base2025_1$Data <- as.Date(Base2025_1$Data, format="%Y-%m-%d")
freq_data <- table(Base2025_1$Data)

plot(as.Date(names(freq_data)), as.numeric(freq_data), type="l", col="blue",
     xlab="Data", ylab="Frequência", main="Frequência ao Longo do Tempo", 
     lwd=2)

Base2025_1$Hora <- as.POSIXct(Base2025_1$Hora, format="%Y-%m-%d %H:%M:%S")
Base2025_1$Hora <- format(Base2025_1$Hora, "%H")
freq_hora <- table(Base2025_1$Hora)

plot(as.numeric(names(freq_hora)), as.numeric(freq_hora), type="l", col="red",
     xlab="Hora", ylab="Frequência", main="Frequência por Hora", 
     lwd=2, xaxt="n")

axis(1, at=0:23, labels=0:23)

# Medidas de posição e separatrizes para a questão 6
Base2025_1$`Idade da Vítima` <- as.numeric(Base2025_1$`Idade da Vítima`)
summary(Base2025_1$`Idade da Vítima`)
quantile(Base2025_1$`Idade da Vítima`, probs = c(0.25, 0.50, 0.75), na.rm = TRUE)

# Medidades de dispersão para a idade da vítima(Questão 7)
var(Base2025_1$`Idade da Vítima`, na.rm = TRUE)
sd(Base2025_1$`Idade da Vítima`, na.rm = TRUE)
range(Base2025_1$`Idade da Vítima`, na.rm = TRUE)
IQR(Base2025_1$`Idade da Vítima`, na.rm = TRUE)

# BoxPlot da questão 8
boxplot(Base2025_1$`Idade da Vítima`, 
        main = "Boxplot da Idade da Vítima", 
        ylab = "Idade", 
        col = "lightblue",
        na.rm = TRUE)

