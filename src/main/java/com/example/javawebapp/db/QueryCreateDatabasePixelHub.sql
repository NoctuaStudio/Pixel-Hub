DROP DATABASE IF EXISTS PixelHub;
CREATE DATABASE PixelHub;
USE PIXELHUB;

CREATE TABLE Estados (
  ID INT AUTO_INCREMENT PRIMARY KEY,
  Nome varchar(255)
);


CREATE TABLE Cidades (
  ID INT AUTO_INCREMENT PRIMARY KEY,
  ID_Estado int ,
  name varchar(255),
  FOREIGN KEY (ID_Estado) REFERENCES Estados(ID)
);


CREATE TABLE Usuarios(
  ID INT AUTO_INCREMENT PRIMARY KEY,
  Nome varchar(100),
  Sobrenome varchar(100),
  Username varchar(50),
  Senha varchar(10000),
  Email varchar(100),
  Telefone varchar(20),
  Endereco varchar(255),
  Cep varchar(10),
  ID_Cidade INT,
  FOREIGN KEY (ID_Cidade) REFERENCES Cidades(ID)
);


CREATE TABLE Produtos(
   ID INT AUTO_INCREMENT PRIMARY KEY,
   ID_Usuario INT,
   Nome VARCHAR(255),
   Descricao VARCHAR(1000),
   Imagem VARCHAR(1000),
   Categoria ENUM('Console','Periferico', 'Jogos', 'Acessorio', 'Outros'),
   Preco DECIMAL,
   Quantidade INT ,
   Usado BOOLEAN,
   Hora_postagem DATETIME ,
  FOREIGN KEY (ID_Usuario) REFERENCES Usuarios(ID)
);


-- Inserir os estados do Brasil
INSERT INTO Estados (Nome) VALUES
    ('Acre'),
    ('Alagoas'),
    ('Amapá'),
    ('Amazonas'),
    ('Bahia'),
    ('Ceará'),
    ('Distrito Federal'),
    ('Espírito Santo'),
    ('Goiás'),
    ('Maranhão'),
    ('Mato Grosso'),
    ('Mato Grosso do Sul'),
    ('Minas Gerais'),
    ('Pará'),
    ('Paraíba'),
    ('Paraná'),
    ('Pernambuco'),
    ('Piauí'),
    ('Rio de Janeiro'),
    ('Rio Grande do Norte'),
    ('Rio Grande do Sul'),
    ('Rondônia'),
    ('Roraima'),
    ('Santa Catarina'),
    ('São Paulo'),
    ('Sergipe'),
    ('Tocantins');
    
    -- Inserir cidades na tabela Cidades
INSERT INTO Cidades (ID_Estado, name) VALUES
    (1, 'Rio Branco'), -- Acre
    (2, 'Maceió'), -- Alagoas
    (3, 'Macapá'), -- Amapá
    (4, 'Manaus'), -- Amazonas
    (5, 'Salvador'), -- Bahia
    (6, 'Fortaleza'), -- Ceará
    (7, 'Brasília'), -- Distrito Federal
    (8, 'Vitória'), -- Espírito Santo
    (9, 'Goiânia'), -- Goiás
    (10, 'São Luís'), -- Maranhão
    (11, 'Cuiabá'), -- Mato Grosso
    (12, 'Campo Grande'), -- Mato Grosso do Sul
    (13, 'Belo Horizonte'), -- Minas Gerais
    (14, 'Belém'), -- Pará
    (15, 'João Pessoa'), -- Paraíba
    (16, 'Curitiba'), -- Paraná
    (17, 'Recife'), -- Pernambuco
    (18, 'Teresina'), -- Piauí
    (19, 'Rio de Janeiro'), -- Rio de Janeiro
    (20, 'Natal'), -- Rio Grande do Norte
    (21, 'Porto Alegre'), -- Rio Grande do Sul
    (22, 'Porto Velho'), -- Rondônia
    (23, 'Boa Vista'), -- Roraima
    (24, 'Florianópolis'), -- Santa Catarina
    (25, 'São Paulo'), -- São Paulo
    (26, 'Aracaju'), -- Sergipe
    (27, 'Palmas'), -- Tocantins -- COLOCANDO MAIS 2 EM CADA ESTADO
    (1, 'Cruzeiro do Sul'), (1, 'Sena Madureira'), -- Acre
    (2, 'Arapiraca'), (2, 'Rio Largo'), -- Alagoas
    (3, 'Santana'), (3, 'Laranjal do Jari'), -- Amapá
    (4, 'Itacoatiara'), (4, 'Parintins'), -- Amazonas
    (5, 'Camaçari'), (5, 'Feira de Santana'), -- Bahia
    (6, 'Caucaia'), (6, 'Juazeiro do Norte'), -- Ceará
    (7, 'Gama'), (7, 'Taguatinga'), -- Distrito Federal
    (8, 'Cariacica'), (8, 'Serra'), -- Espírito Santo
    (9, 'Aparecida de Goiânia'), (9, 'Anápolis'), -- Goiás
    (10, 'Imperatriz'), (10, 'Codó'), -- Maranhão
    (11, 'Várzea Grande'), (11, 'Rondonópolis'), -- Mato Grosso
    (12, 'Dourados'), (12, 'Três Lagoas'), -- Mato Grosso do Sul
    (13, 'Contagem'), (13, 'Uberlândia'), -- Minas Gerais
    (14, 'Ananindeua'), (14, 'Santarém'), -- Pará
    (15, 'Campina Grande'), (15, 'Patos'), -- Paraíba
    (16, 'Londrina'), (16, 'Maringá'), -- Paraná
    (17, 'Jaboatão dos Guararapes'), (17, 'Olinda'), -- Pernambuco
    (18, 'Parnaíba'), (18, 'Picos'), -- Piauí
    (19, 'São Gonçalo'), (19, 'Duque de Caxias'), -- Rio de Janeiro
    (20, 'Mossoró'), (20, 'Parnamirim'), -- Rio Grande do Norte
    (21, 'Canoas'), (21, 'Novo Hamburgo'), -- Rio Grande do Sul
    (22, 'Ji-Paraná'), (22, 'Vilhena'), -- Rondônia
    (23, 'Caracaraí'), (23, 'Mucajaí'), -- Roraima
    (24, 'Joinville'), (24, 'Blumenau'), -- Santa Catarina
    (25, 'Guarulhos'), (25, 'Campinas'), -- São Paulo
    (25, 'São Bernardo do Campo'), (25, 'Santo André'),
    (25, 'Osasco'), (25, 'Santos'),
    (25, 'Sorocaba'), (25, 'Ribeirão Preto'),
    (25, 'São José dos Campos'), (25, 'Mauá'),
    (25, 'São José do Rio Preto'), (25, 'Mogi das Cruzes');
    
    -- Inserir 10 usuários
INSERT INTO Usuarios (Nome, Sobrenome, Username, Senha, Email, Telefone, Endereco, Cep, ID_Cidade) VALUES
    ('João', 'Silva', 'joao123', 'senha123', 'joao@email.com', '123456789', 'Rua A, 123', '12345-678', 1),
    ('Maria', 'Santos', 'maria456', 'senha456', 'maria@email.com', '987654321', 'Avenida B, 456', '56789-012', 2),
    ('Carlos', 'Oliveira', 'carlos789', 'senha789', 'carlos@email.com', '111222333', 'Travessa C, 789', '89012-345', 3),
    ('Ana', 'Pereira', 'ana1011', 'senha1011', 'ana@email.com', '444555666', 'Rua D, 1011', '23456-789', 4),
    ('Paulo', 'Martins', 'paulo1213', 'senha1213', 'paulo@email.com', '777888999', 'Avenida E, 1213', '34567-890', 5),
    ('Fernanda', 'Lima', 'fernanda1415', 'senha1415', 'fernanda@email.com', '222333444', 'Travessa F, 1415', '45678-901', 6),
    ('Roberto', 'Costa', 'roberto1617', 'senha1617', 'roberto@email.com', '555666777', 'Rua G, 1617', '56789-012', 7),
    ('Juliana', 'Almeida', 'juliana1819', 'senha1819', 'juliana@email.com', '999000111', 'Avenida H, 1819', '67890-123', 8),
    ('Lucas', 'Nunes', 'lucas2021', 'senha2021', 'lucas@email.com', '333444555', 'Travessa I, 2021', '78901-234', 9),
    ('Mariana', 'Gomes', 'mariana2223', 'senha2223', 'mariana@email.com', '666777888', 'Rua J, 2223', '89012-345', 10);

	-- Inserir 10 anúncios de venda
INSERT INTO Produtos (ID_Usuario, Nome, Descricao, Imagem, Categoria, Preco, Quantidade, Usado, Hora_postagem) VALUES
    (1, 'PlayStation 5', 'Console de última geração da Sony', 'ps5_image.jpg', 'Console', 3000.00, 1, false, '2023-11-20 10:30:00'),
    (2, 'Teclado Mecânico RGB', 'Teclado para jogos mecânico com iluminação RGB', 'keyboard_image.jpg', 'Periferico', 250.00, 5, true, '2023-11-20 11:15:00'),
    (3, 'Mouse Gamer', 'Mouse de alta precisão para jogos', 'mouse_image.jpg', 'Periferico', 80.00, 10, false, '2023-11-20 12:00:00'),
    (4, 'Headset Sem Fio', 'Headset para jogos sem fio com áudio surround', 'headset_image.jpg', 'Acessorio', 150.00, 3, true, '2023-11-20 13:30:00'),
    (5, 'Controle Xbox Series X', 'Controle sem fio para Xbox Series X', 'xbox_controller_image.jpg', 'Acessorio', 120.00, 2, false, '2023-11-20 14:45:00'),
    (6, 'Placa de Vídeo GTX 1660', 'Placa de vídeo para jogos de médio desempenho', 'gpu_image.jpg', 'Periferico', 800.00, 1, true, '2023-11-20 15:20:00'),
    (7, 'Cadeira Gamer', 'Cadeira ergonômica para longas sessões de jogo', 'gaming_chair_image.jpg', 'Acessorio', 400.00, 1, false, '2023-11-20 16:10:00'),
    (8, 'Jogo de Tabuleiro', 'Jogo de tabuleiro estratégico', 'board_game_image.jpg', 'Outros', 50.00, 5, true, '2023-11-20 17:00:00'),
    (9, 'Notebook Gamer', 'Notebook de alta performance para jogos', 'gaming_laptop_image.jpg', 'Periferico', 2000.00, 1, false, '2023-11-20 18:30:00'),
    (10, 'Fone de Ouvido Bluetooth', 'Fone de ouvido sem fio para jogos e música', 'bluetooth_headphones_image.jpg', 'Acessorio', 100.00, 3, true, '2023-11-20 19:45:00');


    
    SELECT * FROM CIDADES;




