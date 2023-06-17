class SearchProductModel {
  int id;
  dynamic externalId;
  dynamic sku;
  int storeId;
  int brandId;
  String enProductName;
  String? frProductName;
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
  String enAdditionalInformation;
  String frAdditionalInformation;
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
  dynamic shopifyProductType;
  dynamic shopifyVendor;
  String weight;
  String weightUnit;

  SearchProductModel({
    required this.id,
    this.externalId,
    this.sku,
    required this.storeId,
    required this.brandId,
    required this.enProductName,
    this.frProductName,
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
    required this.enAdditionalInformation,
    required this.frAdditionalInformation,
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
    required this.shopifyProductType,
    required this.shopifyVendor,
    required this.weight,
    required this.weightUnit,
  });

  factory SearchProductModel.fromJson(Map<String, dynamic> json) =>
      SearchProductModel(
        id: json["id"],
        externalId: json["external_id"],
        sku: json["sku"],
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
        shopifyProductType: json['shopify_product_type'],
        shopifyVendor: json['shopify_vendor'],
        weight: json['weight'],
        weightUnit: json['weight_unit'],
      );
}
