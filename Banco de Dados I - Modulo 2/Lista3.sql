-- LISTA 3

--Exerc�cio 1
SELECT IDEmpregado, NomeEmpregado FROM Empregado WHERE YEAR(DataAdmissao) LIKE 1980;

--Exerc�cio 2
SELECT NomeDepartamento, COUNT(IDEmpregado) AS QuantidadeEmpregados FROM Departamento, Empregado WHERE Departamento.IDDepartamento = Empregado.IDDepartamento GROUP BY NomeDepartamento, Departamento.IDDepartamento;

--Exerc�cio 3
SELECT UF, COUNT(IDCidade) AS QuantidadeCidade FROM Cidade GROUP BY UF;
