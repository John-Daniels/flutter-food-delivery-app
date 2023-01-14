class Food {
  final String title;
  final double price;
  final String image;

  // final String desc;
  final String deliveryInfo;
  final String category;

  Food({
    required this.title,
    required this.price,
    required this.image,
    required this.deliveryInfo,
    required this.category,
  });

  Food.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        price = double.parse((json['price'] as int).toStringAsFixed(2)),
        image = json['image'],
        deliveryInfo = json['deliveryInfo'],
        category = json['category'];

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    json['title'] = title;
    json['price'] = price;
    json['image'] = image;
    json['deliveryInfo'] = deliveryInfo;
    json['category'] = category;

    return json;
  }
}
