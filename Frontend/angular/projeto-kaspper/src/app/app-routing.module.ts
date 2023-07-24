import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { LoginComponent } from './components/login/login.component';

const routes: Routes = [
  {
    path:"login",
   // component: LoginComponent   Carrega o componente na inicialização do projeto
    loadComponent:()=>
    import('./components/login/login.component').then(x => x.LoginComponent)
  },
  {
    path: '',
    loadComponent:()=>
    import('./components/admin/home/home.component').then(x => x.HomeComponent)
  }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
