import 'package:shopping_app/models/address_model.dart';
import 'package:shopping_app/models/product_model.dart';
import 'package:shopping_app/models/user_model.dart';

List<User> usersList = [];
List<Product> productList = [];
List<Address> addressesList = []; //think about adding address?
User currentUser = User(
  email: 'sara@gmail.com',
  fullName: 'Sara A.',
  imagePath: 'lib/assets/images/profile.png',
  mobileNumber: '0555555555',
  password: '1234',
);
