import { Component } from '@angular/core';

@Component({
  selector: 'product-list',
  templateUrl: './product-list.component.html',
  styleUrls: ['./product-list.component.css']
})
export class ProductListComponent {
  name = "akiyama";
  product  =  {
    name : 'iPhone X',
    price : 999,
    color : 'Red',
    inStock : 10,
    pImage: '/assets/images/iphone.webp'
  }

  display = false;

  addToCart = 0;

  onClick(){
    this.display = true;
  }

  getDiscountedPrice(){
    return 10;
  }

  onNameChange(event:any){
    this.name = event.target.value;
  }

  decraceCart(){
    if (this.addToCart>0){
      this.addToCart--;
    }
  }

  incraceCart(){
    this.addToCart++;
  }

}
