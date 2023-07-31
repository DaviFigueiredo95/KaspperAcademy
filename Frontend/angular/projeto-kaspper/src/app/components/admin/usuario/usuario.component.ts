import { Component, OnInit, inject } from '@angular/core';
import { CommonModule } from '@angular/common';
import { UsuariosService } from 'src/app/services/usuarios.service';

@Component({
  selector: 'app-usuario',
  standalone: true,
  imports: [CommonModule],
  templateUrl: './usuario.component.html',
  styleUrls: ['./usuario.component.scss'],
})
export class UsuarioComponent implements OnInit {
  usuarioService = inject(UsuariosService);

  ngOnInit(): void {
    this.carregaUsuarios();
  }

  carregaUsuarios() {
    this.usuarioService
                      .getUsuarios()
                      .subscribe(dados => console.log(dados));
  }
}
