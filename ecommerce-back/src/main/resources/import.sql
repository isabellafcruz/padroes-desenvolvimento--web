insert into categoria (nome, descricao) values ('Informática', 'Produtos de informática');
insert into categoria (nome, descricao) values ('Eletrônicos', 'Produtos eletrônicos em geral');
insert into categoria (nome, descricao) values ('Celulares', 'Smartphones e acessórios');
insert into categoria (nome, descricao) values ('Periféricos', 'Periféricos para computador');
insert into categoria (nome, descricao) values ('Acessórios', 'Acessórios diversos');

insert into produto (nome, estoque, preco, categoria_id) values ('Notebook Lenovo', 10, 3500.00, 1);
insert into produto (nome, estoque, preco, categoria_id) values ('Monitor LG 24', 15, 899.90, 1);
insert into produto (nome, estoque, preco, categoria_id) values ('Smartphone Samsung', 20, 1899.90, 3);
insert into produto (nome, estoque, preco, categoria_id) values ('Teclado Mecânico', 25, 299.90, 4);
insert into produto (nome, estoque, preco, categoria_id) values ('Mouse Gamer', 30, 149.90, 4);

insert into cliente (nome, email, telefone) values ('João Silva', 'joao@email.com', '14999990001');
insert into cliente (nome, email, telefone) values ('Maria Oliveira', 'maria@email.com', '14999990002');
insert into cliente (nome, email, telefone) values ('Carlos Santos', 'carlos@email.com', '14999990003');
insert into cliente (nome, email, telefone) values ('Ana Souza', 'ana@email.com', '14999990004');
insert into cliente (nome, email, telefone) values ('Pedro Costa', 'pedro@email.com', '14999990005');

insert into pedido (data, status, valor_total, cliente_id) values ('2026-09-01 10:30:00', 'APROVADO', 3500.00, 1);
insert into pedido (data, status, valor_total, cliente_id) values ('2026-09-02 11:35:00', 'APROVADO', 2200.00, 2);
insert into pedido (data, status, valor_total, cliente_id) values ('2026-09-03 14:05:00', 'APROVADO', 350.00, 3);
insert into pedido (data, status, valor_total, cliente_id) values ('2026-09-04 15:35:00', 'APROVADO', 280.00, 4);
insert into pedido (data, status, valor_total, cliente_id) values ('2026-09-05 09:05:00', 'PENDENTE', 900.00, 5);

insert into item_pedido (quantidade, valor_unitario, pedido_id, produto_id) values (1, 3500.00, 1, 1);
insert into item_pedido (quantidade, valor_unitario, pedido_id, produto_id) values (1, 899.90, 2, 2);
insert into item_pedido (quantidade, valor_unitario, pedido_id, produto_id) values (1, 1899.90, 3, 3);
insert into item_pedido (quantidade, valor_unitario, pedido_id, produto_id) values (1, 299.90, 4, 4);
insert into item_pedido (quantidade, valor_unitario, pedido_id, produto_id) values (2, 149.90, 5, 5);

insert into pagamento (valor, data, status, tipo, pedido_id) values (3500.00, '2026-09-01 10:35:00', 'APROVADO', 'PIX', 1);
insert into pagamento (valor, data, status, tipo, pedido_id) values (2200.00, '2026-09-02 11:40:00', 'APROVADO', 'PIX', 2);
insert into pagamento (valor, data, status, tipo, pedido_id) values (350.00, '2026-09-03 14:10:00', 'APROVADO', 'PIX', 3);
insert into pagamento (valor, data, status, tipo, pedido_id) values (280.00, '2026-09-04 15:40:00', 'APROVADO', 'CARTAO', 4);
insert into pagamento (valor, data, status, tipo, pedido_id) values (900.00, '2026-09-05 09:10:00', 'PENDENTE', 'BOLETO', 5);