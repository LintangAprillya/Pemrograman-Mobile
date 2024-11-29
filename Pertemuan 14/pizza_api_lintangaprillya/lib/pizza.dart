class Pizza {
  int? id;
  String? pizzaName;
  String? description;
  double? price;
  String? imageUrl;

  // Konstruktor Pizza
  Pizza({
    this.id,
    this.pizzaName,
    this.description,
    this.price,
    this.imageUrl,
  });

  // Metode untuk mengonversi objek Pizza menjadi JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'pizzaName': pizzaName,
      'description': description,
      'price': price,
      'imageUrl': imageUrl,
    };
  }

  // Metode untuk membuat objek Pizza dari JSON
  factory Pizza.fromJson(Map<String, dynamic> json) {
    return Pizza(
      id: json['id'] as int?,
      pizzaName: json['pizzaName'] as String?,
      description: json['description'] as String?,
      price: json['price'] as double?,
      imageUrl: json['imageUrl'] as String?,
    );
  }
}
