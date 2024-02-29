/*Criação das Tabelas*/

CREATE TABLE Drivers (

    DriverID INT PRIMARY KEY,

    Nome VARCHAR(100),

    CNH VARCHAR(20),

    Endereço VARCHAR(200),

    Contato VARCHAR(50)

);

CREATE TABLE Clients (

    ClientID INT PRIMARY KEY,

    Nome VARCHAR(100),

    Empresa VARCHAR(100),

    Endereço VARCHAR(200),

    Contato VARCHAR(50)

);

CREATE TABLE Orders (

    OrderID INT PRIMARY KEY,

    ClientID INT,

    DriverID INT,

    DetalhesPedido TEXT,

    DataEntrega DATE,

    Status VARCHAR(50),

    FOREIGN KEY (ClientID) REFERENCES Clients(ClientID),

    FOREIGN KEY (DriverID) REFERENCES Drivers(DriverID)

);
/*Inserção :*/

/* Inserção na tabela Drivers */
INSERT INTO Drivers (DriverID, Nome, CNH, Endereço, Contato) VALUES (755, 'Rafa',
'12345677854', 'Rio de Janeiro','(11) 9876-5432');

/* Inserção na tabela Clients */
INSERT INTO Clients (ClientID, Nome, Empresa, Endereço, Contato) 
VALUES (1001, 'Empresa ABC', 'ABC LTDA', 'Rua ABC, 123', '(11) 1234-5678');

/* Inserção na tabela Orders */
INSERT INTO Orders (OrderID, ClientID, DriverID, DetalhesPedido, DataEntrega, Status) 
VALUES (5001, 1001, 755, 'Detalhes do Pedido ABC', '2024-03-05', 'Pendente');

/* Inserção na tabela Drivers */
INSERT INTO Drivers (DriverID, Nome, CNH, Endereço, Contato) 
VALUES (754, 'Santos', '1234567890', 'São Paulo', '(11) 9876-5432');

/* Inserção na tabela Clients */
INSERT INTO Clients (ClientID, Nome, Empresa, Endereço, Contato) 
VALUES (1002, 'Empresa XYZ', 'XYZ LTDA', 'Av. XYZ, 456', '(22) 9876-5432');

/* Inserção na tabela Orders */
INSERT INTO Orders (OrderID, ClientID, DriverID, DetalhesPedido, DataEntrega, Status) 
VALUES (5002, 1002, 754, 'Detalhes do Pedido XYZ', '2024-03-10', 'Pendente');

/* Inserção na tabela Drivers */
INSERT INTO Drivers (DriverID, Nome, CNH, Endereço, Contato) 
VALUES (756, 'Ferreira', '9876543210', 'Belo Horizonte', '(31) 1234-5678');

/* Inserção na tabela Clients */
INSERT INTO Clients (ClientID, Nome, Empresa, Endereço, Contato) 
VALUES (1003, 'Empresa ZZZ', 'ZZZ LTDA', 'Rua ZZZ, 789', '(33) 5555-1234');

/* Inserção na tabela Orders */
INSERT INTO Orders (OrderID, ClientID, DriverID, DetalhesPedido, DataEntrega, Status) 
VALUES (5003, 1003, 756, 'Detalhes do Pedido ZZZ', '2024-03-15', 'Pendente');

