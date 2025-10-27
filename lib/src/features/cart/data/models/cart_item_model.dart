import 'package:ecommerce_product_catalog/src/features/cart/domain/entities/cart_item.dart';
import 'package:ecommerce_product_catalog/src/features/product/data/models/product_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_item_model.freezed.dart';
part 'cart_item_model.g.dart';

@freezed
class CartItemModel with _$CartItemModel {
  const factory CartItemModel({
    required ProductModel product,
    @Default(1) int quantity,
  }) = _CartItemModel;

  const CartItemModel._();

  factory CartItemModel.fromJson(Map<String, dynamic> json) =>
      _$CartItemModelFromJson(json);

  // Mapper: Model → Entity
  CartItem toEntity() => CartItem(
    product: product.toEntity(),
    quantity: quantity,
  );

  // Mapper: Entity → Model
  factory CartItemModel.fromEntity(CartItem entity) => CartItemModel(
    product: ProductModel.fromEntity(entity.product),
    quantity: entity.quantity,
  );
}
