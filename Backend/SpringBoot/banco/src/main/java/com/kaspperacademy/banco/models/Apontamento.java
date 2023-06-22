package com.kaspperacademy.banco.models;

import java.util.Date;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "apontamentos")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Apontamento {
	
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@Column(name = "descricao", nullable = false, length = 100)
	private String descricao;
	
	@Column(name = "data_lancamento", nullable = true)
	private Date dataLancamento;
	
	@ManyToOne
	@JoinColumn(name = "usuario_id", nullable = false, updatable = false)
	private Usuario usuario;
	
}






