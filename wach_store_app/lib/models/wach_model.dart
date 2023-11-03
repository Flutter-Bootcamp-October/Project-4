class WachProduct {
  final String image;
  final String name;

  final String? price;
  final String description;

  WachProduct(
      {required this.image,
      required this.name,
      required this.price,
      required this.description});

  factory WachProduct.fromJson(Map json) {
    return WachProduct(
      description: json['description'],
      image: json['image'],
      name: json['name'],
      price: json['price'],
    );
  }
}
