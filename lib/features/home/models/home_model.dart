import 'package:mhg/features/home/models/product_model.dart';
import 'package:mhg/features/home/models/recent_search_model.dart';
import 'package:mhg/features/home/models/slider_model.dart';
import '../../categories/models/menu.dart';
import 'brand_model.dart';

class HomeModel {
  List<BrandModel> brands;
  List<dynamic> popularSearches;
  List<ProductModel> newArrivals;
  List<RecentSearchModel> recentSearch;
  List<HomePageSectionModel> homeSections;

  HomeModel(
      {required this.brands,
      required this.popularSearches,
      required this.newArrivals,
      required this.recentSearch,
      required this.homeSections});

  factory HomeModel.fromJson(Map<String, dynamic> json) {
    return HomeModel(
        brands: List<BrandModel>.from(
            json["brands"].map((x) => BrandModel.fromJson(x))),
        popularSearches:
            List<dynamic>.from(json["popular_searches"].map((x) => x)),
        newArrivals: List<ProductModel>.from(
            json["new_arrivals"].map((x) => ProductModel.fromJson(x))),
        recentSearch: List<RecentSearchModel>.from(
            json["popular_searches"].map((x) => RecentSearchModel.fromJson(x))),
        homeSections: (json['home_page_sections'] as List<dynamic>)
            .map(
                (e) => HomePageSectionModel.fromJson(e as Map<String, dynamic>))
            .toList());
  }
}

class HomePageSectionModel {
  int? id;
  String? title;
  String? link;
  int? bestSellersCategoryId;
  int? storeId;
  DateTime? createdAt;
  DateTime? updatedAt;
  List<ProductModel> topSellers;
  List<MenuModel> categories;
  List<SliderModel> sliders;

  HomePageSectionModel({
    this.id,
    this.title,
    this.link,
    this.bestSellersCategoryId,
    this.storeId,
    this.createdAt,
    this.updatedAt,
    required this.topSellers,
    required this.categories,
    required this.sliders,
  });

  factory HomePageSectionModel.fromJson(Map<String, dynamic> json) {
    return HomePageSectionModel(
      id: json['id'] as int?,
      title: json['title'] as String?,
      link: json['link'] as String?,
      bestSellersCategoryId: json['best_sellers_category_id'] as int?,
      storeId: json['store_id'] as int?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      topSellers: (json['top_sellers'] as List<dynamic>)
          .map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      categories: (json['categories'] as List<dynamic>)
          .map((e) => MenuModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      sliders: (json['sliders'] as List<dynamic>)
          .map((e) => SliderModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
}
