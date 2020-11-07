
INSERT INTO ESPECIALIZACAO (id_treinamento, area_treinamento, nome_treinamento) VALUES (1, 'Som', 'Dublador');
INSERT INTO ESPECIALIZACAO (id_treinamento, area_treinamento, nome_treinamento) VALUES (2, 'Design', 'Designer Geral');
INSERT INTO ESPECIALIZACAO (id_treinamento, area_treinamento, nome_treinamento) VALUES (3, 'Programação', 'Prog IA');
INSERT INTO ESPECIALIZACAO (id_treinamento, area_treinamento, nome_treinamento) VALUES (4, 'Programação', 'Prog Redes');
INSERT INTO ESPECIALIZACAO (id_treinamento, area_treinamento, nome_treinamento) VALUES (5, 'Programação', 'Prog Gráficos');
INSERT INTO ESPECIALIZACAO (id_treinamento, area_treinamento, nome_treinamento) VALUES (6, 'Som', 'Compositor');
INSERT INTO ESPECIALIZACAO (id_treinamento, area_treinamento, nome_treinamento) VALUES (7, 'Som', 'Supervisor');
INSERT INTO ESPECIALIZACAO (id_treinamento, area_treinamento, nome_treinamento) VALUES (8, 'Design', 'Animador');
INSERT INTO ESPECIALIZACAO (id_treinamento, area_treinamento, nome_treinamento) VALUES (9, 'Design', 'Roteirista');

INSERT INTO FUNCIONARIOS (id, nome, telefone) VALUES (10, 'Gustavo Cunha', '(11) 4002-8922');		
INSERT INTO FUNCIONARIOS (id, nome, telefone) VALUES (11, 'Lucca Toledo', '(66) 6666-6666');		
INSERT INTO FUNCIONARIOS (id, nome, telefone) VALUES (12, 'Matheus Kenji', '(42) 4242-4242');		
INSERT INTO FUNCIONARIOS (id, nome, telefone) VALUES (13, 'Lucas Alexandre', '(44) 0935-9542');		
INSERT INTO FUNCIONARIOS (id, nome, telefone) VALUES (14, 'Matheus Patriarca', '(45) 0139-3112');		
INSERT INTO FUNCIONARIOS (id, nome, telefone) VALUES (15, 'Igor Lara', '(43) 6029-0912');		
INSERT INTO FUNCIONARIOS (id, nome, telefone) VALUES (16, 'Eric Ferreira', '(43) 9130-3194');		
INSERT INTO FUNCIONARIOS (id, nome, telefone) VALUES (17, 'Fernando Santos', '(44) 1938-5834');		
INSERT INTO FUNCIONARIOS (id, nome, telefone) VALUES (18, 'Davi Davanzo', '(33) 3131-3985');
INSERT INTO FUNCIONARIOS (id, nome, telefone) VALUES (19, 'Getúlio Mineiro', '(31) 5678-1295');

INSERT INTO JOGO(nome, topico, categoria, milestone, faixa_etaria) VALUES ('Starcraft', 'Sci-fi', 'RTS', 'Alpha', '16 anos');				
INSERT INTO JOGO(nome, topico, categoria, milestone, faixa_etaria) VALUES ('Hearthstone', 'Fantasia', 'Cardgame', 'Beta', 'Livre');				
INSERT INTO JOGO(nome, topico, categoria, milestone, faixa_etaria) VALUES ('World of Warcraft', 'Fantasia', 'RPG', 'Crunch Time', '12 anos');				

INSERT INTO A_ENGINE(nome, versao, api) VALUES ('Unity', 'Unity 2020', 'Direct3D');
INSERT INTO A_ENGINE(nome, versao, api) VALUES ('GameMaker', 'GameMaker Studio 2', 'OpenGL');
INSERT INTO A_ENGINE(nome, versao, api) VALUES ('UnrealEngine', 'Unreal Engine 4', 'Vulkan');
INSERT INTO A_ENGINE(nome, versao, api) VALUES ('Frostbite', 'Frostbite 3', 'DirectX 11');

INSERT INTO FUNCIONARIO_TEM_ESPECIALIZACAO (id_treinamento, id_funcionario) VALUES (1, 10);
INSERT INTO FUNCIONARIO_TEM_ESPECIALIZACAO (id_treinamento, id_funcionario) VALUES (9, 11);
INSERT INTO FUNCIONARIO_TEM_ESPECIALIZACAO (id_treinamento, id_funcionario) VALUES (3, 12);
INSERT INTO FUNCIONARIO_TEM_ESPECIALIZACAO (id_treinamento, id_funcionario) VALUES (4, 15);
INSERT INTO FUNCIONARIO_TEM_ESPECIALIZACAO (id_treinamento, id_funcionario) VALUES (5, 18);
INSERT INTO FUNCIONARIO_TEM_ESPECIALIZACAO (id_treinamento, id_funcionario) VALUES (6, 13);
INSERT INTO FUNCIONARIO_TEM_ESPECIALIZACAO (id_treinamento, id_funcionario) VALUES (6, 16);
INSERT INTO FUNCIONARIO_TEM_ESPECIALIZACAO (id_treinamento, id_funcionario) VALUES (8, 14);
INSERT INTO FUNCIONARIO_TEM_ESPECIALIZACAO (id_treinamento, id_funcionario) VALUES (2, 17);
INSERT INTO FUNCIONARIO_TEM_ESPECIALIZACAO (id_treinamento, id_funcionario) VALUES (3, 19);

INSERT INTO PRODUCAO_DE_ARTE (id_criacao, nivel, roteiro_nivel, assets_graficos, nome_jogo) VALUES (123, 'Aquático', 'Roteiro Parte #1', 'Pacote de Assets #1', 'World of Warcraft');		
INSERT INTO PRODUCAO_DE_ARTE (id_criacao, nivel, roteiro_nivel, assets_graficos, nome_jogo) VALUES (434, 'Montanhoso', 'Roteiro Parte #2', 'Pacote de Assets #42', 'World of Warcraft');			
INSERT INTO PRODUCAO_DE_ARTE (id_criacao, nivel, roteiro_nivel, assets_graficos, nome_jogo) VALUES (356, 'Floresta', 'Roteiro Parte #3', 'Pacote de Assets #4', 'World of Warcraft');		 	

INSERT INTO PRODUCAO_DE_AUDIO (id_som, tipo_som, letra_script, nome_jogo) VALUES (500, 'Música', 'Letra de Darude - Sandstorm', 'Hearthstone');			
INSERT INTO PRODUCAO_DE_AUDIO (id_som, tipo_som, letra_script, nome_jogo) VALUES (234, 'Música', 'Letra de Shooting Stars', 'Hearthstone');			
INSERT INTO PRODUCAO_DE_AUDIO (id_som, tipo_som, letra_script, nome_jogo) VALUES (135, 'Dublagem', 'Script da Dublagem #135', 'Hearthstone');			

INSERT INTO PROGRAMACAO (id_codigo, linguagem, classe, nome_jogo, nome_engine) VALUES (763, 'C', 'Gráfico', 'Starcraft', 'Frostbite');		
INSERT INTO PROGRAMACAO (id_codigo, linguagem, classe, nome_jogo, nome_engine) VALUES (154, 'C++', 'Rede', 'Hearthstone', 'Unity');		
INSERT INTO PROGRAMACAO (id_codigo, linguagem, classe, nome_jogo, nome_engine) VALUES (784, 'C#', 'IA', 'World of Warcraft', 'UnrealEngine');		
INSERT INTO PROGRAMACAO (id_codigo, linguagem, classe, nome_jogo, nome_engine) VALUES (349, 'C#', 'IA', 'Starcraft', 'Frostbite');		

INSERT INTO DESIGNERS (id_funcionario, id_criacao, cargo) VALUES (11, 123, 'Roteirista');
INSERT INTO DESIGNERS (id_funcionario, id_criacao, cargo) VALUES (14, 123, 'Animador');	
INSERT INTO DESIGNERS (id_funcionario, id_criacao, cargo) VALUES (17, 356, 'Designer Geral');

INSERT INTO ENGENHEIROS_DE_SOM (id_funcionario, id_som, cargo) VALUES (10, 135, 'Dublador');
INSERT INTO ENGENHEIROS_DE_SOM (id_funcionario, id_som, cargo) VALUES (13, 500, 'Compositor');
INSERT INTO ENGENHEIROS_DE_SOM (id_funcionario, id_som, cargo) VALUES (16, 234, 'Compositor');

INSERT INTO PROGRAMADORES (id_funcionario, id_codigo, cargo) VALUES (18, 763, 'Programador de Gráficos');	
INSERT INTO PROGRAMADORES (id_funcionario, id_codigo, cargo) VALUES (15, 154, 'Programador de Redes');
INSERT INTO PROGRAMADORES (id_funcionario, id_codigo, cargo) VALUES (12, 784, 'Programador de IA');
INSERT INTO PROGRAMADORES (id_funcionario, id_codigo, cargo) VALUES (19, 349, 'Programador de IA');

INSERT INTO COPIAS (id,preco,midia,nome_jogo) VALUES (467, 'R$ 150,00', 'Digital', 'World of Warcraft');
INSERT INTO COPIAS (id,preco,midia,nome_jogo) VALUES (964, 'R$ 300,00', 'Física', 'World of Warcraft');
INSERT INTO COPIAS (id,preco,midia,nome_jogo) VALUES (762, 'R$ 350,00', 'Física', 'Starcraft');
INSERT INTO COPIAS (id,preco,midia,nome_jogo) VALUES (345, 'R$ 175,00', 'Digital', 'Starcraft');
INSERT INTO COPIAS (id,preco,midia,nome_jogo) VALUES (391, 'R$ 400,00', 'Física', 'Hearthstone');

INSERT INTO PLATAFORMA (id_plataforma, marca, fabricante, versao) VALUES (20, 'Playstation', 'Sony', 'PS5');		
INSERT INTO PLATAFORMA (id_plataforma, marca, fabricante, versao) VALUES (21, 'PC', 'Microsoft', 'PC');		
INSERT INTO PLATAFORMA (id_plataforma, marca, fabricante, versao) VALUES (22, 'xBox', 'Microsoft', 'xBox One');	
INSERT INTO PLATAFORMA (id_plataforma, marca, fabricante, versao) VALUES (23, 'Nintendo', 'Nintendo', 'Nintendo Switch');
INSERT INTO PLATAFORMA (id_plataforma, marca, fabricante, versao) VALUES (24, 'Google', 'Google', 'Google Stadia');	
INSERT INTO PLATAFORMA (id_plataforma, marca, fabricante, versao) VALUES (25, 'Playstation', 'Sony', 'PSP');		

INSERT INTO PLATAFORMA_TEM_COPIAS (id_plataforma, id_copia) VALUES ('20', 467);
INSERT INTO PLATAFORMA_TEM_COPIAS (id_plataforma, id_copia) VALUES ('24', 964);
INSERT INTO PLATAFORMA_TEM_COPIAS (id_plataforma, id_copia) VALUES ('22', 762);
INSERT INTO PLATAFORMA_TEM_COPIAS (id_plataforma, id_copia) VALUES ('21', 345);
INSERT INTO PLATAFORMA_TEM_COPIAS (id_plataforma, id_copia) VALUES ('23', 391);

INSERT INTO CONTEUDO_ADICIONAL	(nome_dlc, preco_dlc, tamanho_dlc, nome_jogo) VALUES ('The Burning Crusade', 'R$ 60,00', 'Pequena', 'World of Warcraft');
INSERT INTO CONTEUDO_ADICIONAL	(nome_dlc, preco_dlc, tamanho_dlc, nome_jogo) VALUES ('Wrath of the Lich King', 'R$ 120,00', 'Grande', 'World of Warcraft');
INSERT INTO CONTEUDO_ADICIONAL	(nome_dlc, preco_dlc, tamanho_dlc, nome_jogo) VALUES ('Mists of Pandaria', 'R$ 90,00', 'Média', 'World of Warcraft');



