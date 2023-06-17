import 'package:mhg/features/home/models/category_model.dart';
import 'package:mhg/features/home/models/product_model.dart';
import 'package:mhg/features/home/models/slider_model.dart';
import 'brand_model.dart';

class HomeModel {
  List<SliderModel> sliders;
  List<BrandModel> brands;
  List<dynamic> popularSearches;
  List<ProductModel> topSellers;
  List<ProductModel> newArrivals;
  List<CategoryModel> categories;

  HomeModel({
    required this.sliders,
    required this.brands,
    required this.popularSearches,
    required this.topSellers,
    required this.newArrivals,
    required this.categories,
  });

  factory HomeModel.fromJson(Map<String, dynamic> json) => HomeModel(
        sliders: List<SliderModel>.from(
            json["header_sliders"].map((x) => SliderModel.fromJson(x))),
        brands: List<BrandModel>.from(
            json["brands"].map((x) => BrandModel.fromJson(x))),
        popularSearches:
            List<dynamic>.from(json["popular_searches"].map((x) => x)),
        topSellers: List<ProductModel>.from(
            json["top_sellers"].map((x) => ProductModel.fromJson(x))),
        newArrivals: List<ProductModel>.from(
            json["new_arrivals"].map((x) => ProductModel.fromJson(x))),
        categories: List<CategoryModel>.from(
            json["categories"].map((x) => CategoryModel.fromJson(x))),
      );
}
