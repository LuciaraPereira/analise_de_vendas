CREATE TABLE Cliente (
    cd_cliente INT PRIMARY KEY,
    nm_cliente VARCHAR(100) NOT NULL,
    mn_cidade VARCHAR(50) NOT NULL
);

CREATE TABLE Produto (
    cd_produto INT PRIMARY KEY,
    nm_produto VARCHAR(100) NOT NULL,
    vl_preco DECIMAL(10,2) NOT NULL
);

CREATE TABLE Pedido (
    cd_pedido INT PRIMARY KEY,
    cd_cliente INT NOT NULL,
    dt_pedido DATE NOT NULL,
    FOREIGN KEY (cd_cliente) REFERENCES Cliente(cd_cliente)
);

CREATE TABLE ItemPedido (
    cd_item INT PRIMARY KEY,
    cd_pedido INT NOT NULL,
    cd_produto INT NOT NULL,
    qt_item INT NOT NULL,
    FOREIGN KEY (cd_pedido) REFERENCES Pedido(cd_pedido),
    FOREIGN KEY (cd_produto) REFERENCES Produto(cd_produto)
);



INSERT INTO Cliente VALUES
(1, 'Ana', 'Santos'),
(2, 'Carlos', 'São Vicente');

INSERT INTO Produto VALUES
(1, 'Notebook', 3000),
(2, 'Mouse', 100),
(3, 'Teclado', 200);

INSERT INTO Pedido VALUES
(1, 1, '2026-03-01'),
(2, 2, '2026-03-02');

INSERT INTO ItemPedido VALUES
(1, 1, 1, 1),
(2, 1, 2, 2),
(3, 2, 3, 1);