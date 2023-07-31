import { HttpClient } from '@angular/common/http';
import { Injectable, inject } from '@angular/core';

@Injectable({
  providedIn: 'root',
})
export class UsuariosService {
  private API_USUARIO = 'http://localhost:8080/usuarios';

  http = inject(HttpClient);

  getUsuarios() {
    this.http.get(this.API_USUARIO);
  }
}
