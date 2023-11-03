class Product {
  final String name;
  final String description;
  final String image;
  final double rating;
  double price;
  int count;
  WatchCategory category;

  Product(
      {required this.name,
      required this.description,
      required this.price,
      required this.count,
      required this.category,
      required this.image,
      required this.rating});

  factory Product.fromJson(Map json) {
    return Product(
        name: json['name'],
        description: json['description'],
        price: json['price'],
        count: json['count'],
        category: json['category'],
        image: json['image'],
        rating: json['rating']);
  }
}

enum WatchCategory { metallic, classic, leather }
