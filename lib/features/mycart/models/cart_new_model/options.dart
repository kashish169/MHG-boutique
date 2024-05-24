class Options {
  String? sku;
  String? enName;
  String? arName;
  String? brandName;
  dynamic size;
  dynamic color;
  String? image;
  String? imageLink;
  int? discountPrice;
  dynamic itemTag;
  int? discountParcent;
  String? voucher;
  int? variantId;
  int? variantQuantity;
  int? isGiveawayItem;
  String? variantNameEn;
  String? variantNameAr;
  bool? isGwp;
  dynamic minGwpCartAmount;
  bool? isPreOrder;

  Options({
    this.sku,
    this.enName,
    this.arName,
    this.brandName,
    this.size,
    this.color,
    this.image,
    this.imageLink,
    this.discountPrice,
    this.itemTag,
    this.discountParcent,
    this.voucher,
    this.variantId,
    this.variantQuantity,
    this.isGiveawayItem,
    this.variantNameEn,
    this.variantNameAr,
    this.isGwp,
    this.minGwpCartAmount,
    this.isPreOrder,
  });

  factory Options.fromJson(Map<String, dynamic> json) => Options(
        sku: json['sku'] as String?,
        enName: json['en_name'] as String?,
        arName: json['ar_name'] as String?,
        brandName: json['brand_name'] as String?,
        size: json['size'] as dynamic,
        color: json['color'] as dynamic,
        image: json['image'] as String?,
        imageLink: json['image_link'] as String?,
        discountPrice: json['discount_price'] as int?,
        itemTag: json['item_tag'] as dynamic,
        discountParcent: json['discount_parcent'] as int?,
        voucher: json['voucher'] as String?,
        variantId: json['variant_id'] as int?,
        variantQuantity: json['variant_quantity'] as int?,
        isGiveawayItem: json['is_giveaway_item'] as int?,
        variantNameEn: json['variant_name_en'] as String?,
        variantNameAr: json['variant_name_ar'] as String?,
        isGwp: json['is_gwp'] as bool?,
        minGwpCartAmount: json['min_gwp_cart_amount'] as dynamic,
        isPreOrder: json['is_pre_order'] as bool?,
      );

  Map<String, dynamic> toJson() => {
        'sku': sku,
        'en_name': enName,
        'ar_name': arName,
        'brand_name': brandName,
        'size': size,
        'color': color,
        'image': image,
        'image_link': imageLink,
        'discount_price': discountPrice,
        'item_tag': itemTag,
        'discount_parcent': discountParcent,
        'voucher': voucher,
        'variant_id': variantId,
        'variant_quantity': variantQuantity,
        'is_giveaway_item': isGiveawayItem,
        'variant_name_en': variantNameEn,
        'variant_name_ar': variantNameAr,
        'is_gwp': isGwp,
        'min_gwp_cart_amount': minGwpCartAmount,
        'is_pre_order': isPreOrder,
      };
}
