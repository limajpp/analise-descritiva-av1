# Criando a estrutura de dados
data.frame(Base2025_1)
# Anexando ao ambiente
attach(Base2025_1)

# Criando as tabelas de frequência simples e relativas da questão 1:
tabelaSimplesNatureza = table(Base2025_1$Natureza)
tabelaRelativaNatureza = prop.table(tabelaSimplesNatureza)
tabelaRelativaNaturezaArredondada = round(tabelaRelativaNatureza, 4)
tabelaSimplesNatureza
tabelaRelativaNatureza
tabelaRelativaNaturezaArredondada

tabelaSimplesMeioEmpregado = table(Base2025_1$`Meio Empregado`)
tabelaRelativaMeioEmpregado = prop.table(tabelaSimplesMeioEmpregado)
tabelaRelativaMeioEmpregadoArredondada = round(tabelaRelativaMeioEmpregado, 4)
tabelaSimplesMeioEmpregado
tabelaRelativaMeioEmpregado
tabelaRelativaMeioEmpregadoArredondada

tabelaSimplesGenero = table(Base2025_1$Gênero)
tabelaRelativaGenero = prop.table(tabelaSimplesGenero)
tabelaRelativaGeneroArredondada = round(tabelaRelativaGenero, 4)
tabelaSimplesGenero
tabelaRelativaGenero
tabelaRelativaGeneroArredondada

# TODO *Coluna "Alfabetizado está com contagem errada"*
tabelaSimplesEscolaridadeDaVitima = table(Base2025_1$`Escolaridade da Vítima`)
tabelaSimplesEscolaridadeDaVitima

tabelaSimplesRacaDaVitima = table(Base2025_1$`Raça da Vítima`)
tabelaSimplesRacaDaVitima

tabelaSimplesDiaDaSemana = table(Base2025_1$`Dia da Semana`)
tabelaSimplesDiaDaSemana