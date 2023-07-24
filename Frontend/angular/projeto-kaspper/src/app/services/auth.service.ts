import { Injectable, inject } from '@angular/core';
import { Router } from '@angular/router';

@Injectable({
  providedIn: 'root'
})
export class AuthService {


  // Nova abordagem para Injeção de dependências
  router = inject(Router)

  login() {}

  logout() {}

}
