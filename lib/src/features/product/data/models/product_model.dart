import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ecommerce_product_catalog/src/features/product/domain/entities/product.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class ProductModel with _$ProductModel {
  const factory ProductModel({
    required String id,
    required String name,
    required String description,
    required double price,
    required String imageUrl,
    required String category,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);

  factory ProductModel.fromEntity(Product product) {
    return ProductModel(
      id: product.id,
      name: product.name,
      description: product.description,
      price: product.price,
      imageUrl: product.imageUrl,
      category: product.category,
    );
  }
}

extension ProductMapper on ProductModel {
  Product toEntity() => Product(
    id: id,
    name: name,
    description: description,
    price: price,
    imageUrl: imageUrl,
    category: category,
  );
}
