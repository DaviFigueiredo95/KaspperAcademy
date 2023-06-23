package com.kaspperacademy.banco.services;

import java.util.List;

import com.kaspperacademy.banco.models.Usuario;

public interface UsuarioService {

	Usuario salvar(Usuario usuario);
	
	Usuario atualizar(Usuario usuario);
	
	List<Usuario> listarUsuarios();
	
	void remover(Long id);
	
	
	
}
