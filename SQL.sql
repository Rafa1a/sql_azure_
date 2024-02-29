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
/**/