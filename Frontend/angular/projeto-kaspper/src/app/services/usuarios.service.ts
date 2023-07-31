import { HttpClient } from '@angular/common/http';
import { Injectable, inject } from '@angular/core';
import { Usuario } from '../models/usuario.model';

@Injectable({
  providedIn: 'root',
})
export class UsuariosService {
  private API_USUARIO = 'http://localhost:8080/usuarios';

  http = inject(HttpClient);

  getUsuarios() {
    return this.http.get<Usuario[]>(this.API_USUARIO);
  }
}
