-- Criação da tabela Cliente
CREATE TABLE Cliente (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) UNIQUE NOT NULL,
    email VARCHAR(100),
    telefone VARCHAR(20)
);

-- Criação da tabela Conta
CREATE TABLE Conta (
    id_conta INT AUTO_INCREMENT PRIMARY KEY,
    numero_conta VARCHAR(20) NOT NULL,
    saldo DECIMAL(10,2) DEFAULT 0.00,
    id_cliente INT NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
);


CREATE TABLE Movimentacao (
    id_movimentacao INT PRIMARY KEY AUTO_INCREMENT,
    conta_origem INT,
    conta_destino INT,
    tipo ENUM('CREDITO', 'DEBITO', 'TRANSFERENCIA') NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    data_hora TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (conta_origem) REFERENCES Conta(numero_conta),
    FOREIGN KEY (conta_destino) REFERENCES Conta(numero_conta)
);
