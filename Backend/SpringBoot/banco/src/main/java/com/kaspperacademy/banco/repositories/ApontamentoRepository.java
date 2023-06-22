package com.kaspperacademy.banco.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.kaspperacademy.banco.models.Apontamento;

@Repository
public interface ApontamentoRepository extends JpaRepository<Apontamento, Long> {

}
