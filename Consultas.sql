-- 1. Liste os funcionários que tem mais de uma especialização em áreas diferentes, e quais são suas especializações

SELECT F.nome, E1.area_treinamento, FO1.id_treinamento
FROM FUNCIONARIOS F, ESPECIALIZACAO E1, FORMADO FO1
WHERE F.id_funcionario = FO1.id_funcionario
AND FO1.id_funcionario IN (SELECT FO1.id_funcionario
						 FROM ESPECIALIZACAO E2, FORMADO FO2
                         WHERE FO1.id_funcionario = FO2.id_funcionario
                         AND FO1.id_treinamento = E1.id_treinamento
                         AND FO2.id_treinamento = E2.id_treinamento
                         AND E1.area_treinamento <> E2.area_treinamento);

-- 2. Encontre a quantidade de funcionários formados em cada especialização

SELECT E.nome_treinamento, COUNT(FO.id_funcionario)
FROM FUNCIONARIOS F, ESPECIALIZACAO E, FORMADO FO
WHERE F.id_funcionario = FO.id_funcionario
AND FO.id_treinamento = E.id_treinamento
GROUP BY E.nome_treinamento;

-- 3. Encontre o nome dos designers que trabalham no mesmo cargo dentro de uma criação de arte, e seus respectivos cargos.

SELECT DISTINCT F.nome, D.cargo
FROM FUNCIONARIOS F, DESIGNERS D
WHERE F.id_funcionario = D.id_funcionario
AND F.id_funcionario IN (SELECT F1.id_funcionario
						 FROM FUNCIONARIOS F1, FUNCIONARIOS F2, DESIGNERS D1, DESIGNERS D2, PRODUCAO_DE_ARTE P1, PRODUCAO_DE_ARTE P2
					 	 WHERE F1.id_funcionario = D1.id_funcionario
                         AND F2.id_funcionario = D2.id_funcionario
                         AND F1.id_funcionario <> F2.id_funcionario
                         AND D1.id_criacao = P1.id_criacao
                         AND D2.id_criacao = P2.id_criacao
                         AND P1.id_criacao = P2.id_criacao
                         AND D1.cargo = D2.cargo);

-- 4. Encontre o nome e o id do funcionário com todas especializações.

SELECT F.nome, F.id_funcionario
FROM FUNCIONARIOS F
WHERE NOT EXISTS(SELECT E.id_treinamento
				 FROM ESPECIALIZACAO E 
                 WHERE NOT EXISTS(SELECT FO.id_treinamento
								 FROM FORMADO FO
								 WHERE F.id_funcionario = FO.id_funcionario
								 AND E.id_treinamento = FO.id_treinamento));

-- 5. Encontre o nome dos dubladores que trabalham em jogos com mais de 2 scripts de dublagem.

SELECT F.nome, F.id_funcionario
FROM FUNCIONARIOS F, ENGENHEIROS_DE_SOM E, PRODUCAO_DE_AUDIO P 
WHERE F.id_funcionario = E.id_funcionario
AND E.id_som = P.id_som
AND E.cargo = 'Dublador'
AND P.nome_jogo IN (SELECT P.nome_jogo
                    FROM PRODUCAO_DE_AUDIO P 
                    WHERE P.tipo_som = 'Dublagem'
                    GROUP BY P.nome_jogo
                    HAVING COUNT(P.letra_script) > 2);
                          
-- 6. Ache o nome e o número dos designers que trabalham apenas nas criações de arte do jogo Starcraft 2.

SELECT F.nome, F.id_funcionario
FROM FUNCIONARIOS F
WHERE F.id_funcionario IN(SELECT D.id_funcionario
						  FROM DESIGNERS D
						  WHERE D.id_criacao NOT IN(SELECT P.id_criacao
												  FROM PRODUCAO_DE_ARTE P
												  WHERE F.id_funcionario = D.id_funcionario
												  AND D.id_criacao = P.id_criacao
												  AND P.nome_jogo <> 'Starcraft 2'));

-- 7. Selecione as versões de engine que não estão sendo utilizadas em programação.

SELECT A.versao, A.id_engine
FROM A_ENGINE A
WHERE A.id_engine NOT IN(SELECT P.id_engine
						 FROM PROGRAMACAO P
                         WHERE A.id_engine = P.id_engine);

-- 8. Imprima a quantidade jogos disponíveis para cada marca.

SELECT P.marca, COUNT(*) as jogos
FROM PLATAFORMA P, COPIAS C, PLATAFORMA_TEM_COPIAS PC
WHERE P.id_plataforma = PC.id_plataforma
AND C.id_copia = PC.id_copia
GROUP BY P.marca;

-- 9. Ache os jogos exclusivos para o console PS5.

SELECT DISTINCT C.nome_jogo
FROM COPIAS C, PLATAFORMA_TEM_COPIAS PC
WHERE C.id_copia = PC.id_copia
AND PC.id_copia NOT IN(SELECT PC.id_copia
					   FROM PLATAFORMA P, PLATAFORMA_TEM_COPIAS PC
                       WHERE P.id_plataforma = PC.id_plataforma
                       AND P.marca <> 'Playstation');

-- 10. Faça a média de preço para as DLC's de cada tamanho.

SELECT CA.tamanho_dlc, AVG(CA.preco_dlc)
FROM CONTEUDO_ADICIONAL CA
GROUP BY CA.tamanho_dlc;
