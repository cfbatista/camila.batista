-- LISTA 5

-- Exerc�cio 1
SELECT NomeEmpregado, IDGerente, NomeDepartamento FROM Departamento INNER JOIN Empregado ON Departamento.IDDepartamento = Empregado.IDDepartamento;

-- Exerc�cio 2
SELECT TOP 1 Departamento.IDDepartamento, NomeDepartamento, MAX(Salario) AS Salario FROM Empregado INNER JOIN Departamento ON Empregado.IDDepartamento = Departamento.IDDepartamento GROUP BY Departamento.IDDepartamento, NomeDepartamento ORDER BY MAX(Salario) DESC;

-- Exerc�cio 3
UPDATE Empregado SET Salario = (Salario*0.173) WHERE Empregado.IDDepartamento = (SELECT Departamento.IDDepartamento FROM Departamento WHERE Localizacao LIKE 'SAO PAULO');

SELECT Salario, (Salario * 0.173) AS NovoSalario FROM Empregado, Departamento WHERE Empregado.IDDepartamento = Departamento.IDDepartamento AND Localizacao LIKE 'SAO PAULO';

-- Exerc�cio 4
SELECT Nome, UF FROM Cidade UNION ALL SELECT Nome, UF FROM Cidade GO;

-- Exerc�cio 5
SELECT Nome, UF FROM Cidade INNER JOIN (SELECT (Nome + '*') AS Nome, (UF + '*') AS UF FROM Cidade WHERE IDCidade IN (SELECT MAX(IDCidade) FROM Cidade)));


