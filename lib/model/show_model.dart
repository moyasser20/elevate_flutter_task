class ShoeModel {
  final String imageUrl;
  final String name;
  final String description;
  final String price;
  final String oldPrice;
  final String rating;

  ShoeModel({
    required this.imageUrl,
    required this.name,
    required this.description,
    required this.price,
    required this.oldPrice,
    required this.rating,
  });

  factory ShoeModel.fromJson(Map<String, dynamic> json) {
    return ShoeModel(
      imageUrl: json["image"] ?? "",
      name: json["title"] ?? "No Name",
      description: json["description"] ?? "No Description",
      price: "${json["price"]} EGP",
      oldPrice: "${(json["price"] * 1.2).toStringAsFixed(2)} EGP", // Fake old price (20% more)
      rating: json["rating"] != null ? json["rating"]["rate"].toString() : "0.0",
    );
  }
}
