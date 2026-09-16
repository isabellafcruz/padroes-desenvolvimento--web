
insert into categoria (nome, descricao) values ('Informática', 'Produtos de Informática');
insert into categoria (nome, descricao) values ('Livros', 'Livros Técnicos');
insert into categoria (nome, descricao) values ('Eletrônicos', 'Aparelhos Eletrônicos');
insert into categoria (nome, descricao) values ('Móveis', 'Móveis para Casa e Escritório');
insert into categoria (nome, descricao) values ('Esportes', 'Artigos Esportivos');


insert into produto (nome, descricao, preco, estoque, categoria_id) values ('Código Limpo', 'Livro do Autor Robert C. Martin', 100.00, 20, 2);
insert into produto (nome, descricao, preco, estoque, categoria_id) values ('Notebook Dell', 'Notebook 16GB RAM, 512GB SSD', 4500.00, 10, 1);
insert into produto (nome, descricao, preco, estoque, categoria_id) values ('Smart TV 50"', 'Smart TV 4K com HDR', 2800.00, 8, 3);
insert into produto (nome, descricao, preco, estoque, categoria_id) values ('Cadeira Gamer', 'Cadeira ergonômica reclinável', 1200.00, 15, 4);
insert into produto (nome, descricao, preco, estoque, categoria_id) values ('Bola de Futebol', 'Bola oficial tamanho 5', 150.00, 30, 5);


insert into cliente (nome, email, telefone) values ('Ana Souza', 'ana.souza@email.com', '11999990001');
insert into cliente (nome, email, telefone) values ('Bruno Lima', 'bruno.lima@email.com', '11999990002');
insert into cliente (nome, email, telefone) values ('Carla Mendes', 'carla.mendes@email.com', '11999990003');
insert into cliente (nome, email, telefone) values ('Diego Alves', 'diego.alves@email.com', '11999990004');
insert into cliente (nome, email, telefone) values ('Elisa Rocha', 'elisa.rocha@email.com', '11999990005');


insert into pedido (data, status, valor_total, cliente_id) values ('2026-01-05 10:30:00', 'CONCLUIDO', 4600.00, 1);
insert into pedido (data, status, valor_total, cliente_id) values ('2026-01-10 14:15:00', 'PENDENTE', 2800.00, 2);
insert into pedido (data, status, valor_total, cliente_id) values ('2026-01-12 09:00:00', 'CONCLUIDO', 1200.00, 3);
insert into pedido (data, status, valor_total, cliente_id) values ('2026-01-15 18:45:00', 'CANCELADO', 150.00, 4);
insert into pedido (data, status, valor_total, cliente_id) values ('2026-01-20 11:20:00', 'PENDENTE', 100.00, 5);


insert into item_pedido (quantidade, valor_unitario, pedido_id, produto_id) values (1, 4500.00, 1, 2);
insert into item_pedido (quantidade, valor_unitario, pedido_id, produto_id) values (1, 2800.00, 2, 3);
insert into item_pedido (quantidade, valor_unitario, pedido_id, produto_id) values (1, 1200.00, 3, 4);
insert into item_pedido (quantidade, valor_unitario, pedido_id, produto_id) values (1, 150.00, 4, 5);
insert into item_pedido (quantidade, valor_unitario, pedido_id, produto_id) values (1, 100.00, 5, 1);

insert into pagamento (valor, data, status, tipo, pedido_id) values (4600.00, '2026-01-05 10:35:00', 'APROVADO', 'CARTAO', 1);
insert into pagamento (valor, data, status, tipo, pedido_id) values (2800.00, '2026-01-10 14:20:00', 'PENDENTE', 'PIX', 2);
insert into pagamento (valor, data, status, tipo, pedido_id) values (1200.00, '2026-01-12 09:05:00', 'APROVADO', 'BOLETO', 3);
insert into pagamento (valor, data, status, tipo, pedido_id) values (150.00, '2026-01-15 18:50:00', 'ESTORNADO', 'CARTAO', 4);
insert into pagamento (valor, data, status, tipo, pedido_id) values (100.00, '2026-01-20 11:25:00', 'PENDENTE', 'PIX', 5);