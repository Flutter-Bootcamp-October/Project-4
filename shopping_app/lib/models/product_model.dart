class Product {
  final String name;
  final String description;
  double price;
  int count;
  WatchCategory category;

  Product(this.name, this.description, this.price, this.count, this.category);

  //need a from json here
}

enum WatchCategory { metallic, classic, leather }
