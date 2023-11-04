<<<<<<< HEAD
import 'package:shopingpriject/models/user_model.dart';

List<User> userList = [];
late User currentUser;
List<User> listdata = [];
=======
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
>>>>>>> af75baf704b8ba4de0f3beff0787746675d94997
