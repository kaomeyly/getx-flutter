// ignore_for_file: public_member_api_docs, sort_constructors_first
class ProductModel {
  String name;
  String image;

  ProductModel({required this.name, required this.image});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'image': image};
  }

  factory ProductModel.fromJson(Map<String, dynamic> data) {
    return ProductModel(
      name: data['name'] ?? "",
      image: data["api_featured_image"] ?? "",
    );
  }
}
