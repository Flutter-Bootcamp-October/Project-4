import 'package:wach_store_app/models/user.dart';
import 'package:wach_store_app/models/wach_model.dart';

List<WachProduct> WachProductList = [];
List<WachProduct> orderProducts = [];



List<String> categories = [
  'Trending',
  'Popular',
  'New',
  'Best Collection',
];

List addresses = [
  {
    'userId': 1,
    'address': '',
  },
];

User? userObject;
List<User> userList = [];