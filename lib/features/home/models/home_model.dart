import 'package:mhg/features/categories/models/categories_model.dart';
import 'package:mhg/features/home/models/category_model.dart';
import 'package:mhg/features/home/models/middle_section_model.dart';
import 'package:mhg/features/home/models/product_model.dart';
import 'package:mhg/features/home/models/recent_search_model.dart';
import 'package:mhg/features/home/models/slider_model.dart';
import 'brand_model.dart';

class HomeModel {
  List<SliderModel> sliders;
  List<BrandModel> brands;
  List<dynamic> popularSearches;
  List<ProductModel> topSellers;
  List<ProductModel> newArrivals;
  List<Menu> categories;
  List<MiddleSectionModel> middleSections;
  List<SliderModel> footerSliders;
  List<RecentSearchModel> recentSearch;

  HomeModel({
    required this.sliders,
    required this.brands,
    required this.popularSearches,
    required this.topSellers,
    required this.newArrivals,
    required this.categories,
    required this.middleSections,
    required this.footerSliders,
    required this.recentSearch,
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
        categories: List<Menu>.from(
            json["categories"].map((x) => Menu.fromJson(x))),
        middleSections: List<MiddleSectionModel>.from(
            json["middle_sections"].map((x) => MiddleSectionModel.fromJson(x))),
        footerSliders: List<SliderModel>.from(
            json["footer_sliders"].map((x) => SliderModel.fromJson(x))),
        recentSearch: List<RecentSearchModel>.from(
            json["popular_searches"].map((x) => RecentSearchModel.fromJson(x))),
      );
}
