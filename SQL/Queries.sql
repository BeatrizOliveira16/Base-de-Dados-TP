USE escola_de_futebol;

-- Dá-nos o fisioterapeuta da equipa com id de '57'
SELECT Nome FROM Fisioterapeuta
    WHERE id IN (
        SELECT Fisioterapeuta_id FROM Fisioterapeuta_has_Equipa
            WHERE equipa_id = '57');

-- Seleciona os nomes dos encarregados de educação começados por ‘M’
SELECT * FROM Encarregado_de_Educacao
    WHERE Nome LIKE 'm%';
    
-- Seleciona os Treinadores que tem contactos diferentes de ‘969876543’
SELECT * FROM Treinador
    WHERE Contacto <> '969876543';
    
-- Conta o número de Datas de Nascimento presentes sem repetir datas
SELECT Count(DISTINCT Data_de_Nascimento) FROM Jogador;

-- Soma os valores das Mensalidades dos Encarregados de Educação com nome diferente de ‘Maria Joaquina Teixeira’
SELECT Sum(Mensalidade)
  FROM encarregado_de_educacao
	 WHERE Nome <>'Maria Joaquina Teixeira';
     
     
-- Conta o número de jogadores de cada localidade 
SELECT COUNT(*), Localidade.Descricao 
    FROM Jogador
       INNER JOIN Localidade ON Jogador.Localidade = Localidade.ID
			GROUP BY Localidade
				ORDER BY 1;
                
-- Para cada jogador de uma dada localidade, dá-nos os jogadores que também pertencem a essa localidade 
SELECT A.Nome AS NomedoJogador1, B.Nome AS NomedoJogador2, A.Localidade
    FROM Jogador A, Jogador B
      WHERE A.ID <> B.ID
          AND A.Localidade = B.Localidade
             ORDER BY A.Localidade;
             
    