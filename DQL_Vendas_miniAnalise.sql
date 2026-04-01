/*TOTAL POR PEDIDO*/
SELECT p.cd_pedido, SUM(pr.vl_preco * i.qt_item) AS total_pedido
FROM Pedido p
JOIN ItemPedido i ON p.cd_pedido = i.cd_pedido
JOIN Produto pr ON i.cd_produto = pr.cd_produto
GROUP BY p.cd_pedido;

/* PRODUTO MAIS VENDIDO*/

SELECT pr.nm_produto, SUM(i.qt_item) AS total_vendido
FROM ItemPedido i
JOIN Produto pr ON i.cd_produto = pr.cd_produto
GROUP BY pr.nm_produto
ORDER BY total_vendido DESC;

/*CLIENTE QUE MAIS COMPROU*/

SELECT c.nm_cliente, SUM(pr.vl_preco * i.qt_item) AS total_gasto
FROM Cliente c
JOIN Pedido p ON c.cd_cliente = p.cd_cliente
JOIN ItemPedido i ON p.cd_pedido = i.cd_pedido
JOIN Produto pr ON i.cd_produto = pr.cd_produto
GROUP BY c.nm_cliente
ORDER BY total_gasto DESC;

