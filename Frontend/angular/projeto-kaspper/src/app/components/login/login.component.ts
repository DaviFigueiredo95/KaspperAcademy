import { Component, OnInit, inject } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormBuilder, FormGroup, FormsModule, ReactiveFormsModule, Validators } from '@angular/forms';
import { MatButtonModule } from '@angular/material/button';
import { MatInputModule } from '@angular/material/input';
import { MatCardModule } from '@angular/material/card';
import { AuthService } from 'src/app/services/auth.service';
import { UfService } from 'src/app/services/uf.service';

@Component({
  selector: 'app-login',
  standalone: true,
  imports: [CommonModule, FormsModule, ReactiveFormsModule, MatInputModule, MatCardModule, MatButtonModule],
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.scss']
})
export class LoginComponent implements OnInit {

  form!: FormGroup;
  private formSubmited!: boolean;

  // Injeção de dependência do FormBuilder
  fb = inject(FormBuilder);

  // Injeção do AuthService
  auth = inject(AuthService);
  
  // Injeção do ufService
  ufService = inject(UfService);

  ngOnInit(): void {
    this.form = this.fb.group({
      userName:['', Validators.required],
      password:['', Validators.required]
    });

    //this.ufService
    //              .getUfs()
    //              .subscribe((estados) => console.log(estados));
  }

  login() {
    this.auth.login(this.form.value);
    console.log(this.form.value);
  }

  isFieldInvalid(field: string) {
    return ((!this.form.get(field)?.valid && this.form.get(field)?.touched) || 
    (this.form.get(field)?.untouched && this.formSubmited));
  }


}
