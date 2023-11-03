import 'package:flutter/material.dart';
import 'package:shopingpriject/models/product_model.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
        Stack(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(height: 350,width: 200,color: Color(0xfff9f7f8), ),
          
        ),
        SizedBox(height: 250,width: 200,child: Image.asset(product.image),),
        Positioned(
          bottom: 50,
          child: Container(
            height: 100,
            width: 200,
           
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(product.name,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                
                Text(product.price.toString(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                
              
              ],
            ),
            
          ),
        ),
          Padding(
            padding: const EdgeInsets.only(left: 70,top: 330),
            child: Container(
              
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(70),color: Color(0xfffec774)),width: 40,height: 40,child: Icon(Icons.add),),
          )
      ],)
    ],);
    
  }
}
