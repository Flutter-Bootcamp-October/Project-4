import 'package:flutter/material.dart';

import '../models/user_model.dart';
import '../models/watch_model.dart';

late User currentUser;

List<User> usersList = [];

List<User> loggedInUsers = [];

List<Watch> watchesList = [];

List<Watch> cartList = [];

ValueNotifier<double> grandTotal = ValueNotifier(0.0);
ValueNotifier<double> itemsTotal = ValueNotifier(0.0);

double discount = 0;

// double itemsTotal = 0;

// void calculateGlobalPrice() {
//   grandTotal.value = 0;
//   for (var element in cartList) {
//     grandTotal.value += element.itemsTotal * element.price;
//   }
// }
