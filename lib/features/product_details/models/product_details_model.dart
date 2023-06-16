import '../../home/models/brand_model.dart';
import '../../home/models/category_model.dart';
import '../../home/models/product_model.dart';
import '../../home/models/store_model.dart';

class ProductDetailsModel {
  int id;
  dynamic externalId;
  dynamic sku;
  int categoryId;
  int storeId;
  int brandId;
  String enProductName;
  String frProductName;
  String enProductSlug;
  String frProductSlug;
  String enAbout;
  String frAbout;
  dynamic itemTag;
  String price;
  String discount;
  String discountPrice;
  int quantity;
  String sold;
  String primaryImage;
  String image2;
  String image3;
  String image4;
  String image5;
  dynamic digitalType;
  dynamic digitalLink;
  dynamic digitalFile;
  dynamic licenseName;
  dynamic licenseKey;
  dynamic affiliateLink;
  int type;
  int featuredProduct;
  int bestSelling;
  int newArrival;
  int onSale;
  int status;
  String enDescription;
  String frDescription;
  String enShippingReturn;
  String frShippingReturn;
  dynamic enAdditionalInformation;
  dynamic frAdditionalInformation;
  dynamic voucher;
  DateTime createdAt;
  DateTime updatedAt;
  int inCart;
  int cartQty;
  int inWishlist;
  String primaryImageLink;
  String image2Link;
  String image3Link;
  String image4Link;
  String image5Link;
  StoreModel store;
  CategoryModel category;
  BrandModel brand;
  List<Color> colors;
  List<Size> sizes;
  List<ProductTag> productTags;
  List<dynamic> productReviews;
  List<ProductModel> relatedProducts;
  bool isLoadingQuantity;

  ProductDetailsModel({
    required this.id,
    this.externalId,
    this.sku,
    required this.categoryId,
    required this.storeId,
    required this.brandId,
    required this.enProductName,
    required this.frProductName,
    required this.enProductSlug,
    required this.frProductSlug,
    required this.enAbout,
    required this.frAbout,
    this.itemTag,
    required this.price,
    required this.discount,
    required this.discountPrice,
    required this.quantity,
    required this.sold,
    required this.primaryImage,
    required this.image2,
    required this.image3,
    required this.image4,
    required this.image5,
    this.digitalType,
    this.digitalLink,
    this.digitalFile,
    this.licenseName,
    this.licenseKey,
    this.affiliateLink,
    required this.type,
    required this.featuredProduct,
    required this.bestSelling,
    required this.newArrival,
    required this.onSale,
    required this.status,
    required this.enDescription,
    required this.frDescription,
    required this.enShippingReturn,
    required this.frShippingReturn,
    this.enAdditionalInformation,
    this.frAdditionalInformation,
    this.voucher,
    required this.createdAt,
    required this.updatedAt,
    required this.inCart,
    required this.cartQty,
    required this.inWishlist,
    required this.primaryImageLink,
    required this.image2Link,
    required this.image3Link,
    required this.image4Link,
    required this.image5Link,
    required this.store,
    required this.category,
    required this.brand,
    required this.colors,
    required this.sizes,
    required this.productTags,
    required this.productReviews,
    required this.relatedProducts,
    this.isLoadingQuantity = false,
  });

  factory ProductDetailsModel.fromJson(Map<String, dynamic> json) =>
      ProductDetailsModel(
        id: json["id"],
        externalId: json["external_id"],
        sku: json["sku"],
        categoryId: json["Category_Id"],
        storeId: json["store_id"],
        brandId: json["Brand_Id"],
        enProductName: json["en_Product_Name"],
        frProductName: json["fr_Product_Name"],
        enProductSlug: json["en_Product_Slug"],
        frProductSlug: json["fr_Product_Slug"],
        enAbout: json["en_About"],
        frAbout: json["fr_About"],
        itemTag: json["ItemTag"],
        price: json["Price"],
        discount: json["Discount"],
        discountPrice: json["Discount_Price"],
        quantity: json["Quantity"],
        sold: json["Sold"],
        primaryImage: json["Primary_Image"],
        image2: json["Image2"],
        image3: json["Image3"],
        image4: json["Image4"],
        image5: json["Image5"],
        digitalType: json["digital_type"],
        digitalLink: json["digital_link"],
        digitalFile: json["digital_file"],
        licenseName: json["license_name"],
        licenseKey: json["license_key"],
        affiliateLink: json["affiliate_link"],
        type: json["type"],
        featuredProduct: json["Featured_Product"],
        bestSelling: json["Best_Selling"],
        newArrival: json["New_Arrival"],
        onSale: json["On_Sale"],
        status: json["Status"],
        enDescription: json["en_Description"],
        frDescription: json["fr_Description"],
        enShippingReturn: json["en_ShippingReturn"],
        frShippingReturn: json["fr_ShippingReturn"],
        enAdditionalInformation: json["en_AdditionalInformation"],
        frAdditionalInformation: json["fr_AdditionalInformation"],
        voucher: json["Voucher"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        inCart: json["in_cart"],
        cartQty: json["cart_qty"],
        inWishlist: json["in_wishlist"],
        primaryImageLink: json["primary_image_link"],
        image2Link: json["image2_link"],
        image3Link: json["image3_link"],
        image4Link: json["image4_link"],
        image5Link: json["image5_link"],
        store: StoreModel.fromJson(json["store"]),
        category: CategoryModel.fromJson(json["category"]),
        brand: BrandModel.fromJson(json["brand"]),
        colors: List<Color>.from(json["colors"].map((x) => Color.fromJson(x))),
        sizes: List<Size>.from(json["sizes"].map((x) => Size.fromJson(x))),
        productTags: List<ProductTag>.from(
            json["product_tags"].map((x) => ProductTag.fromJson(x))),
        productReviews:
            List<dynamic>.from(json["product_reviews"].map((x) => x)),
        relatedProducts: List<ProductModel>.from(
            json["related_products"].map((x) => ProductModel.fromJson(x))),
      );
}

class Color {
  int id;
  String name;
  String colorCode;
  DateTime createdAt;
  DateTime updatedAt;
  ColorPivot pivot;

  Color({
    required this.id,
    required this.name,
    required this.colorCode,
    required this.createdAt,
    required this.updatedAt,
    required this.pivot,
  });

  factory Color.fromJson(Map<String, dynamic> json) => Color(
        id: json["id"],
        name: json["Name"],
        colorCode: json["ColorCode"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        pivot: ColorPivot.fromJson(json["pivot"]),
      );
}

class ColorPivot {
  int productId;
  int colorId;

  ColorPivot({
    required this.productId,
    required this.colorId,
  });

  factory ColorPivot.fromJson(Map<String, dynamic> json) => ColorPivot(
        productId: json["product_id"],
        colorId: json["color_id"],
      );

  Map<String, dynamic> toJson() => {
        "product_id": productId,
        "color_id": colorId,
      };
}

class ProductTag {
  int id;
  int productId;
  String tag;
  DateTime createdAt;
  DateTime updatedAt;

  ProductTag({
    required this.id,
    required this.productId,
    required this.tag,
    required this.createdAt,
    required this.updatedAt,
  });

  factory ProductTag.fromJson(Map<String, dynamic> json) => ProductTag(
        id: json["id"],
        productId: json["product_id"],
        tag: json["tag"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );
}

class Size {
  int id;
  String size;
  DateTime createdAt;
  DateTime updatedAt;
  SizePivot pivot;

  Size({
    required this.id,
    required this.size,
    required this.createdAt,
    required this.updatedAt,
    required this.pivot,
  });

  factory Size.fromJson(Map<String, dynamic> json) => Size(
        id: json["id"],
        size: json["Size"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        pivot: SizePivot.fromJson(json["pivot"]),
      );
}

class SizePivot {
  int productId;
  int sizeId;

  SizePivot({
    required this.productId,
    required this.sizeId,
  });

  factory SizePivot.fromJson(Map<String, dynamic> json) => SizePivot(
        productId: json["product_id"],
        sizeId: json["size_id"],
      );
}
