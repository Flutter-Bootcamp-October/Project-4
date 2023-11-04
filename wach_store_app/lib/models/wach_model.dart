class WachProduct {
  final String image;
  final String name;

  final String? price;
  final String description;
int? count;
  WachProduct(
      {required this.image,
      required this.name,
      required this.price,this.count,
      required this.description});

  factory WachProduct.fromJson(Map json) {
    return WachProduct(
      description: json['description'],
      image: json['image'],
      name: json['name'],count: json['count'],
      price: json['price'],
    );
  }
}
