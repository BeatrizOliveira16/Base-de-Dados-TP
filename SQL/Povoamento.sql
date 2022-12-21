USE escola_de_futebol;

INSERT INTO Encarregado_de_Educacao
	(ID, Nome, Mensalidade, Contacto)
    VALUES 
    ('1', 'Henrique Faria','25', 'Null'),
    ('2', 'Ana Beatriz Silva','25', 'Null'),
    ('3', 'Beatriz Fernandes Oliveira','25','Null'),
    ('4', 'Pedro Fernandes','25', 'Null'),
    ('5', 'Francisco Teófilo','25', 'Null'),
    ('6', 'Miguel Freitas','25','Null'),
    ('7', 'Inês Presa','25', 'Null'),
    ('8', 'Bruno Machado','25', 'Null'),
    ('9', 'Tiago Carriço','25', 'Null'),
    ('10', 'José Ferreira','25', 'Null'),
    ('11', 'Eduardo Freitas','25', 'Null'),
    ('12', 'David  Machado','25', 'Null'),
    ('13', 'Maria Joaquina Teixeira','25', 'Null');

INSERT INTO Localidade 
	(ID, Descricao)
    VALUES
    ('1','Ruilhe'),
    ('2','Pedralva'),
    ('3','Merelim'),
    ('4','Vimieiro'),
    ('5','Lamas'),
    ('6','Crespos'),
    ('7','Esporões'),
    ('8','Navarra'),
    ('9','Sobreposta'),
    ('10','Tebosa'),
    ('11','Adaúfe'),
    ('12','Palmeira');
    
INSERT INTO Escalao
	(ID, Designacao)
    VALUES
    ('1','Juniores'),
    ('2','Juvenis');
    
INSERT INTO Treinador
	(ID, Nome, TPTD, Foto, Tipo, Contacto, Rua, Codigo_de_Postal, Localidade)
    VALUES
    ('1','Eduardo Ferro Rodrigues','654321','NULL','Principal','921345678','Rua1','4700-456','1'),
    ('2','Antonio Costa','987456','NULL','Adjunto','931234567','Rua2','4700-123','11'),
    ('3','Catarina Martins','789654','NULL','Adjunto','961234567','Rua3','4700-321','5'),
    ('4','Marcelo Rebelo de Sousa','987123','NULL','Principal','969876543','Rua4','4700-987','2'),
	('5','Ricardo Salgado','123456','NULL','Principal','912345689','Rua0','4700-789','12');

INSERT INTO Jogador
	(ID, Nome, Data_de_Nascimento, Foto, Rua, Codigo_de_Postal, Localidade, Escalao, Encarregado_de_Educacao_ID, Equipa_ID)
    VALUES
    ('1','Inês Martins','1999/3/26','NULL','Rua1','4700-684','1','1','13','58'),
    ('2','Afonso Cruz','2001/7/19','NULL','Rua2','4700-352','2','2','1','57'),
    ('3','Alexandre Abreu','2001/4/6','NULL','Rua3','4700-354','11','2','2','57'),
    ('4','Anabela Pereira','2000/11/1','NULL','Rua4','4700-987','4','2','4','57'),
    ('5','André Barbosa','2000/10/22','NULL','Rua5','4700-633','4','2','5','57'),
    ('6','Bruno Silva','2000/9/29','NULL','Rua6','4700-951','2','2','6','57'),
    ('7','Camila Pinto','2000/7/25','NULL','Rua7','4700-315','3','2','7','57'),
    ('8','Cristiana Ribeiro','2000/8/3','NULL','Rua8','4700-321','9','2','7','57'),
    ('9','Fernando Bicalho','1999/3/27','NULL','Rua9','4700-741','7','1','12','58'),
    ('10','Ivo Miguel','1999/2/7','NULL','Rua10','4700-315','9','1','3','58'),
    ('11','João Guedes','1999/5/30','NULL','Rua11','4700-965','10','1','11','58'),
    ('12','João Pedro Cardoso','1999/12/5','NULL','Rua12','4700-838','5','1','10','58'),
    ('13','Mafalda Oliveira','2001/1/31','NULL','Rua11','4700-965','10','2','9','57'),
    ('14','Cristina Fernandes ','2001/11/27','NULL','Rua12','4700-838','5','2','12','57'),
    ('15','João Oliveira','2001/5/23','NULL','Rua20','4700-389','2','2','8','57'),
    ('16','Maria Nunes','2001/7/29','NULL','Rua30','4700-352','11','2','7','57'),
    ('17','Carla Fernandes','2000/01/30','NULL','Rua45','4700-638','4','2','5','59'),
    ('18','Manuel Silva','2000/9/25','NULL','Rua19','4700-350','11','2','6','59'),
    ('19','José Bruno Silva','2000/12/29','NULL','Rua5','4700-633','4','2','4','59'),
    ('20','Ana Camila Pinheiro','2000/9/25','NULL','Rua12','4700-838','5','2','2','59'),
    ('21','Ana Ribeiro','2000/10/3','NULL','Rua15','4700-312','9','2','3','59'),
    ('22','Afonso Silva','1999/9/23','NULL','Rua17','4700-742','7','1','1','58'),
    ('23','Sara Miguel','1999/1/17','NULL','Rua18','4700-315','9','1','5','58'),
    ('24','Manuel Machado','2001/5/8','NULL','Rua24','4700-345','5','2','8','59'),
    ('25','João Quintas','1999/7/11','NULL','Rua25','4700-844','4','1','10','58'),
    ('26','André Graça','2000/6/2','NULL','Rua26','4700-369','3','2','13','59'),
    ('27','Mathis Vilaça','2000/2/25','NULL','Rua27','4700-542','2','2','9','59'),
    ('28','Rafael Cardoso','1999/12/3','NULL','Rua28','4700-654','1','1','6','58'),
    ('29','Ana Cristina Carvalho','2001/3/7','NULL','Rua29','4700-124','8','2','7','59'),
    ('30','Soraia Matos','2000/6/15','NULL','Rua30','4700-236','6','2','11','59'),
    ('31','Ricardo Mendes','2001/5/28','NULL','Rua31','4700-441','4','2','1','59'),
    ('32','Tânia Miranda','2001/6/22','NULL','Rua32','4700-615','5','2','3','58'),
    ('33','Catarina Quintas','1999/1/31','NULL','Rua0','4700-654','1','1','13','58');
    
INSERT INTO Fisioterapeuta
	(ID, Nome)
    VALUES
    ('55','Pedro Teixeira'),
    ('56','Rui Rodrigues');

INSERT INTO Fisioterapeuta_has_Equipa
	(Fisioterapeuta_ID, Equipa_ID)
	VALUES
    ('55','57'),
    ('55','58'),
    ('56','59');
    
INSERT INTO Equipa
	(ID, Classificacao, Treinador_ID)
    VALUES
    ('57','1','5'),
    ('58','11','1'),
    ('59','5','4');

