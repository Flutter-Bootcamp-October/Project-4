import 'package:shopingpriject/models/product_model.dart';

List<Product> listProucts=[];
List<Product> orderProuct=[];

double globalPrice = 0;

void calculateGlobalPrice() {
  globalPrice = 0;
  for (var element in orderProuct) {
    globalPrice += element.count! * double.parse(element.price);
  }
  print(globalPrice);
}