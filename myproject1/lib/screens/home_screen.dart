import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(children: [
      SizedBox(height: 50,),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Icon(Icons.filter_list,),
          Container(
            width: 150,
            height: 50,
            
            child: Image.asset("lib\\assets\\imges\\img10.png",fit: BoxFit.fitWidth,)),
            Icon(Icons.more)
        ],),
      ),
   Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
     Padding(
       padding: const EdgeInsets.all(8.0),
       child: Text("Hello",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Color(0xff263961)),),
     ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text("Choose Your Top Brands",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
    )
   ],),
   Padding(
     padding: const EdgeInsets.all(8.0),
     child: Row(children: [
        Container(width: 90,height: 50,decoration: BoxDecoration(
          color: Color(0xfffcc77b),borderRadius: BorderRadiusDirectional.circular(20)),
          child: Center(child: Text("Trending")),)
     ],),
   )
    
    ],
    ),
    );
  }
}