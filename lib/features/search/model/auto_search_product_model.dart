class AutoSearchProductModel {
  int id;
  String enProductName;
  String frProductName;
  int inWishlist;
  String primaryImageLink;
  String image2Link;
  String image3Link;
  String image4Link;
  String image5Link;

  AutoSearchProductModel({
    required this.id,
    required this.enProductName,
    required this.frProductName,
    required this.inWishlist,
    required this.primaryImageLink,
    required this.image2Link,
    required this.image3Link,
    required this.image4Link,
    required this.image5Link,
  });

  factory AutoSearchProductModel.fromJson(Map<String, dynamic> json) =>
      AutoSearchProductModel(
        id: json["id"],
        enProductName: json["en_Product_Name"],
        frProductName: json["fr_Product_Name"],
        inWishlist: json["in_wishlist"],
        primaryImageLink: json["primary_image_link"],
        image2Link: json["image2_link"],
        image3Link: json["image3_link"],
        image4Link: json["image4_link"],
        image5Link: json["image5_link"],
      );
}
