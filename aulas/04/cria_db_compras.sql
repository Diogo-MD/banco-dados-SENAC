CREATE TABLE Pedido (
    PedidoID INT PRIMARY KEY,
    ClienteID INT,
    DataPedido DATE,
    FOREIGN KEY (ClienteID) REFERENCES Cliente (ClienteID)
)