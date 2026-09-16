

package br.edu.unifio.ecommerce.repositorios;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import java.math.BigDecimal;
import java.util.List;
import org.springframework.data.domain.Sort;
import br.edu.unifio.ecommerce.entidades.Categoria;
import br.edu.unifio.ecommerce.entidades.Produto;
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertTrue;

@SpringBootTest
public class ProdutoRepositoriotests {
    @Autowired
    private CategoriaRepositorio categoriaRepositorio;
    @Autowired
    private ProdutoRepositorio produtoRepositorio;

    @Test
    public void deveSalvarUmProdutoNovo(){
        var produto = new Produto();
        produto.setNome("Notebook Lenovo Legion 5i");
        produto.setDescricao("Notebook Gamer Lenovo Legion 5i, Intel Core i7, 16GB RAM, 512GB SSD, NVIDIA GeForce RTX 3060");
        produto.setPreco(new BigDecimal("7999.99"));
        produto.setEstoque(Short.parseShort("10"));

        Categoria categoria = categoriaRepositorio.findById(1).orElseThrow();
        produto.setCategoria(categoria);

        produtoRepositorio.save(produto);

        assertNotNull(produto.getId());
        assertEquals(6, produto.getId());
    }
public void deveBuscarUmProdutoPorId() {
    Produto produto = produtoRepositorio.findById(3).orElseThrow();
    assertNotNull(produto);
    assertEquals("Smart TV 50", produto.getNome());
}

    @Test
    public void deveBuscarTodosOsProdutos () {
        List<Produto> produtos = produtoRepositorio.findAll(Sort.by("nome"));
        assertEquals(7, produtos.size());
        assertEquals("Bola de Futebol",produtos.get(0).getNome());
        assertEquals("Cadeira Gamer",produtos.get(1).getNome());
    }

    @Test 
    public void deveRemoverUmProdutoPorId(){
        Produto produto = new Produto();
        produto.setNome("Teste");
        produto.setDescricao("Teste");
        produto.setPreco(new BigDecimal("7999.99"));
        produto.setEstoque(Short.parseShort("10"));

        Categoria categoria = categoriaRepositorio.findById(1).orElseThrow();
        produto.setCategoria(categoria);

        produtoRepositorio.save(produto);

        assertTrue(produtoRepositorio.existsById(produto.getId()));
        produtoRepositorio.deleteById(produto.getId());
        assertFalse(produtoRepositorio.existsById(produto.getId()));
    }

    @Test 
    public void deveAtualizarUmProduto(){
       Produto produto = new Produto();
        produto.setNome("Teste");
        produto.setDescricao("Teste");
        produto.setPreco(new BigDecimal("7999.99"));
        produto.setEstoque(Short.parseShort("10"));

        Categoria categoria = categoriaRepositorio.findById(1).orElseThrow();
        produto.setCategoria(categoria);

        produtoRepositorio.save(produto);

        produto.setNome("Teste Atualizado");
        produtoRepositorio.save(produto);

        assertEquals("Teste Atualizado",produtoRepositorio.findById(produto.getId()).orElseThrow().getNome());
    }
}