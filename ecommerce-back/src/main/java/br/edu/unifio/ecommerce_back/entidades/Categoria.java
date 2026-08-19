package br.edu.unifio.ecommerce_back.entidades;


import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;


@Getter
@Setter
@NoArgsConstructor

public class Categoria {

    private Short id;
    private String nome;
    private String desc;

}
