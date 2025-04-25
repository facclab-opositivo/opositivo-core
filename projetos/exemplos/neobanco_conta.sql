#TABLE CONTA

Campo | Tipo | Descrição
id_conta | INT (PK) | Identificador da conta
numero_conta | VARCHAR(20) | Número da conta
saldo | DECIMAL(10,2) | Saldo da conta
id_cliente | INT (FK → Cliente) | Referência ao dono da conta