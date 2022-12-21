-- Obter os jogadores da Localidade dada como argumento
Use escola_de_futebol
DELIMITER $$
CREATE PROCEDURE JogadoresdaLocalidade (In nlocalidade INT)
BEGIN 
	SELECT * FROM Jogador 
        WHERE Localidade = nlocalidade;
END $$

CALL JogadoresdaLocalidade('4');

-- Calcula a diferença de anos entre o dia de hoje e a data de nascimento de um dado jogador
DELIMITER $$
CREATE PROCEDURE JogadorIdade (In n_jogador INT)
BEGIN 
	SELECT year(date(now()))- year(Data_de_Nascimento) FROM Jogador 
        WHERE Jogador.Id = n_jogador;
END $$

CALL JogadorIdade('4');

-- Contar as equipas que um dado treinador, com o identificar n_treinador, treinar

DELIMITER $$
CREATE PROCEDURE EquipasTreinadasPor (In n_treinador INT)
BEGIN 
	SELECT Count(*) FROM Treinador
		INNER JOIN Equipa as E on E.Treinador_ID = Treinador.ID
        WHERE Treinador.Id = n_treinador;
END $$

CALL EquipasTreinadasPor('5');