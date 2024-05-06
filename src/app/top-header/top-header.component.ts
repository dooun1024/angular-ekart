import { Component } from '@angular/core';

@Component({
  selector: 'top-header',
  templateUrl: './top-header.component.html',
  styleUrls: ['./top-header.component.css']
})
export class TopHeaderComponent {
  title='edumy';
  message = 'Online learning';
  display = false;
}
