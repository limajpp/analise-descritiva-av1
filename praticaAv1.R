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