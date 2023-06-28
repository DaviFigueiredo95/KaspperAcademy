package com.kaspper.exercicio.praticando.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "enderecos")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Endereco {

	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@Column(name = "rua", nullable = false, length = 75)
	private String rua;
	
	@Column(name = "numero", nullable = false, length = 5)
	private String numero;
	
	@Column(name = "bairro", nullable = false, length = 75)
	private String bairro;
	
	@Column(name = "cidade", nullable = false, length = 75)
	private String cidade;
	
	@OneToOne
	@JoinColumn(name = "cliente_id", nullable = false, updatable = false)
	private Cliente cliente;
	
}
