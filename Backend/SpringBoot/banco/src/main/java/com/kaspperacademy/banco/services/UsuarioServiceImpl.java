package com.kaspperacademy.banco.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kaspperacademy.banco.models.Usuario;
import com.kaspperacademy.banco.repositories.UsuarioRepository;

import jakarta.transaction.Transactional;

@Service
public class UsuarioServiceImpl implements UsuarioService {
	
	@Autowired
	private UsuarioRepository usuarioRepository;

	@Override
	@Transactional
	public Usuario salvar(Usuario usuario) {
		return this.usuarioRepository.save(usuario);
	}

	@Override
	@Transactional
	public Usuario atualizar(Usuario usuario) {
		return this.usuarioRepository.save(usuario);
	}

	@Override
	public List<Usuario> listarUsuarios() {
		return this.usuarioRepository.findAll();
	}
	

	@Override
	public Usuario listarUsuario(Long id) {
		Optional<Usuario> usuario = this.usuarioRepository.findById(id);
		return usuario.orElseThrow();
	}

	@Override
	public void remover(Long id) {
		this.usuarioRepository.deleteById(id);
	}

}
