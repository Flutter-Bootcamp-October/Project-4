import 'package:flutter/material.dart';
import 'package:shopingpriject/data/global.dart';
import 'package:shopingpriject/models/product_model.dart';
import 'package:shopingpriject/screens/order_screen.dart';

class OrderCard extends StatefulWidget {
  const OrderCard({super.key, required this.product, });
final Product product;
  @override
  State<OrderCard> createState() => _OrderCardState();
}

class _OrderCardState extends State<OrderCard> {
  @override
  Widget build(BuildContext context) {
    return Row(
     
      children: [
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: Container(width: 90,height: 100,color: Color(0xfff9f7f8),child: Image.asset(widget.product.image),),
       )
      ,Column(children: [Text(widget.product.name,style: TextStyle(color: Color(0xff293a5b,),fontSize: 17,fontWeight: FontWeight.bold),),
       
      Padding(
        padding: const EdgeInsets.only(left: 20,top: 10),
        child: Container(width: 150,height: 50,child: Text(widget.product.description,style: TextStyle(color: Color(0xffa7a5a6)),),),
        
      ),
      Padding(
        padding: const EdgeInsets.only(right: 100,top: 5),
        child: Text(widget.product.price,style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
      )
      ],),
        Column(children: [
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: InkWell(
              onTap: (){
               if (widget.product.count! > 1) {
                widget.product.count = widget.product.count! - 1;
                globalPrice -= double.parse(widget.product.price);

                setState(() {});
                context
                    .findAncestorStateOfType<OrderScreenState>()!
                    .setState(() {});
              } else if (widget.product.count! == 1) {
                widget.product.count = 0;
                globalPrice = globalPrice -
                    (double.parse(widget.product.price) *
                        widget.product.count!);
                orderProuct.remove(widget.product);

                context
                    .findAncestorStateOfType<OrderScreenState>()!
                    .setState(() {});
              }
              },
              child: Container(width: 40,height: 40,decoration: BoxDecoration(borderRadius: BorderRadius.circular(70),color: Color(0xfffcc874),),child: Icon(Icons.remove),)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50,top: 5,bottom: 5),
            child: Text(widget.product.count.toString(),style: TextStyle(fontSize: 17),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: InkWell(
              onTap: (){
                widget.product.count = widget.product.count! + 1;
              globalPrice += double.parse(widget.product.price);

              context
                  .findAncestorStateOfType<OrderScreenState>()!
                  .setState(() {});
              },
              child: Container(width: 40,height: 40,decoration: BoxDecoration(borderRadius: BorderRadius.circular(70),color: Color(0xfffcc874),),child: Icon(Icons.add),)),
          ),
        ],)

      ],
    );
  }
}