import { Component } from '@angular/core';
import {MatIconModule} from '@angular/material/icon';
import {MatButtonModule} from '@angular/material/button';
import {MatToolbarModule} from '@angular/material/toolbar';
import { LogoComponent } from "../../shared/logo/logo.component";

@Component({
    selector: 'app-footer',
    template: `
            <mat-toolbar class="footer">
                <span>
                    
                </span>
            </mat-toolbar>
    `,
    styleUrls: ['./footer.component.scss'],
    standalone: true,
    imports: [MatToolbarModule, MatButtonModule, MatIconModule, LogoComponent]
})
export class FooterComponent {

}
