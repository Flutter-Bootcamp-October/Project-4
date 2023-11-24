part of 'cart_bloc.dart';

abstract class CartEvent {
  final Watch watch;

  CartEvent({required this.watch});
}

class CartIncreaseEvent extends CartEvent {
  CartIncreaseEvent({required super.watch});
}

class CartDecreaseEvent extends CartEvent {
  CartDecreaseEvent({required super.watch});
}

class CartAddEvent extends CartEvent {
  final int? itemCount;
  CartAddEvent({this.itemCount = 1, required super.watch});
}

class CartRemoveEvent extends CartEvent {
  CartRemoveEvent({required super.watch});
}

class CartClearEvent extends CartEvent {
  CartClearEvent({required super.watch});
}

// class CartChangeCountEvent extends CartEvent {
//   CartChangeCountEvent({required super.watch});
// }
