import { Component } from '@angular/core';

@Component({
  selector: 'product-list',
  templateUrl: './product-list.component.html',
  styleUrls: ['./product-list.component.css']
})
export class ProductListComponent {
  product  =  {
    name : 'iPhone',
    price : 999,
    color : 'Red'
  }

  display = false;

  onClick(){
    this.display = true;
  }
}
