import 'package:ecommerce_product_catalog/src/features/product/domain/entities/product.dart';

abstract class IProductRepository {
  Future<List<Product>> getAllProduct();
  Future<Product> getProductById(String id);
}
