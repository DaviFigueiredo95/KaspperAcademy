package com.kaspperacademy.banco.exceptions;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

import jakarta.servlet.http.HttpServletRequest;

@ControllerAdvice
public class ValidacoesExceptionHandler {
	
	@ExceptionHandler(MethodArgumentNotValidException.class)
	public ResponseEntity<?> invalid(MethodArgumentNotValidException ex, HttpServletRequest request) {
		List<String> erros = new ArrayList<String>();
		ex.getAllErrors().forEach(err -> erros.add(err.getDefaultMessage()));
		Map<String, List<String>> resultado = new HashMap<>();
		resultado.put("errors", erros);
		return new ResponseEntity<>(resultado, HttpStatus.BAD_REQUEST);
		
	}
	
}
