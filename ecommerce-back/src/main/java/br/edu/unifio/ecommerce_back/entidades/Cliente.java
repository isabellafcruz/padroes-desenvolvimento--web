package br.edu.unifio.ecommerce_back.entidades;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
@Getter
@Setter
@NoArgsConstructor
public class Cliente {


@Id
@GeneratedValue(strategy = GenerationType.IDENTITY)
private Integer id;

private String nome;

private String email;

private String telefone;


}
