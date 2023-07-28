------------------------------------------ Populando tabela com as informações de cada endereços ------------------
INSERT INTO biblioteca.endereco (rua, numero, complemento, bairro,cidade,estado,pais,cep)
	VALUES 
    ('R.César Carelli', '1065','Casa','Iguaçu','Fazenda Rio Grande','PR','Brasil','83833477'),
    ('R.Santa Rita de Cassia','1345','Casa 1','Santa Terezinha','Fazenda Rio Grande','PR','Brasil','83829322'),
    ('R. Rio de Janeiro','1598','Casa2','Estados','Fazenda Rio Grande','PR','Brasil','83830242'),
    ('R. Pelicano','214','Casa','Gralha Azul','Fazenda Rio Grande','PR','Brasil','83824542'),
    ('R.Nossa Senhora das Gracas','1619','Casa2','Santa Terezinha Ipe','Fazenda Rio Grande','PR','Brasil','83829332'),
    ('Pç.Paris','S/N','praça','Glória','Rio De Janeiro','RJ','Brasil','20021040'),
    ('Ld. do Livramento','77','Casa','Gamboa','Rio De Janeiro','RJ','Brasil','20221080'),
    ('Av. Paulista','1578','Museu','Bela Vista','São Paulo','SP','Brasil','01310200'),
    ('R.Smith de Vasconcelos','30','Casa','Cosme Velho','Rio De Janeiro','RJ','Brasil','22241160'),
    ('Pç.Castro Alves','S/N','Praça','Centro','Salvador','BA','Brasil','40301110');
    
------------------------------------ Populando tabela com as informações de cada pessoa ---------------------------
INSERT INTO biblioteca.pessoa ( nome, cpf, data_de_nascimento,email,nacionalidade,id_endereco)
	VALUES
    ('Larissa Schmidt','11174553456','1999-04-23','larissaschmidt34@gmail.com','Brasileira',4),
    ('Stefani Schmidt','11256745623','1998-06-16','stefanischmidt35@gmail.com','Brasileira',2),
    ('Alexandre Nascimento','11345367899','2005-10-30','alebraz435@gmail.com','Brasileiro',1),
    ('Vania Aparecida','03456712345','2000-05-28','vaniaaparecida234@gmail.com','Brasileira',5),
    ('Agenor Tiberio da Silva','12345678910','1912-04-15','agenortiberio546@gmail.com','Brasileira',3),
    ('Castro Alves','34523467812','1847-03-14','castro@castrando.com','Brasileira',10),
    ('Machado De Assis','11171356734','1839-06-21','amolando@machado.com','Brasileira',7),
    ('Ruth Rocha','23412312345','1931-03-02','pedradura@rocha.com','Brasileira',8),
    ('Alexandre Dumas','11175656745','1802-07-24','umportodos@todosporum.com','Francesa',6),
    ('Cecilha Meireles','11208756734','1901-11-07','ouisto@ouaquilo.com','Brasileira',9);
    
-------------------------------- Populando tabela com as informações de cada funcionario --------------------------    
INSERT INTO biblioteca.funcionario (cargo, numero_de_registro, ano_de_admissao , senha_de_acesso, id_pessoa)
   VALUES
   ('Bibliotecario','6773','2023-07-25 10:10:10','12345678',5),
   ('Recepcionista','5689','2010-04-13 14:23:19','87654321',3),
   ('Seguranca','2345','2000-05-14 12:10:13','23142567',1),
   ('Auxiliar de servicos gerais','3456','2023-04-16 15:10:34','56341234',2),
   ('Operadora de caixa','5634','2022-06-18 16:10:10','34263723',4);
-------------------------------- Populando tabela com as informações de cada autor --------------------------   
INSERT INTO biblioteca.autor (quantidade_de_publicados, especializacao, id_pessoa)
	VALUES
	('50','Poesia',10),
    ('200','Literatura Infantil',8),
    ('1200','Romance',9),
    ('820','Realismo',7),
    ('5','Poesia',6);
---------------------------- Populando tabela com as informações de cada editora ----------------------    
INSERT INTO biblioteca.editora (nome, telefone, cnpj)
		VALUES
        ('Companhia das Letras', '4136042644','12345678912345'),
        ('Aleph','4136273456','12232423567887'),
        ('Suma','4136045634','34567856435698'),
        ('Editora Intrinseca','4136275678','56763456782576'),
        ('Globo','2121212121','04067191000160');
----------------------------Populando tabela com as informações de cada livro --------------------------        
INSERT INTO	biblioteca.livro (titulo, genero,quantidade_de_paginas,idioma,ano_de_publicacao,id_autor,id_editora)  
		VALUES
        ('Espuma Flutuantes','Poesia','169','Português','1997',5,5),
        ('Romanceiro Da Incofidência','Romance','360','Português','2017',1,3),
        ('Helena','Romance','280','Português','2018',4,2),
        ('A Primavera Da Lagarta','Literatura Infantil','32','Português','2017',2,4),
        ('O Conde De Monte-Cristo','Romance','1304','Português','2017',3,1);
        
    
    
    