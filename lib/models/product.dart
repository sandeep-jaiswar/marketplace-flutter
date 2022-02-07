class Product {
  final String id;
  final bool IS_RATED;
  final bool HAS_MERCHANT_RETURN_POLICY;
  final bool HAS_MEASUREMENT;
  final bool HAS_VARIANT;
  final String NAME;
  final String CATEGORY;
  final String BRAND_ID;
  final String COUNTRY_OF_ASSEMBLY;
  final String COUNTRY_OF_ORIGIN;
  final String IS_RELATED_TO;
  final String MANUFACTURER;
  final String IMAGE;
  final String ALL_IMAGE;
  final int OFFER_PRICE;
  final int SELLING_PRICE;
  final String createdAt;
  final String updatedAt;

  Product({
    required this.id,
    required this.IMAGE,
    required this.ALL_IMAGE,
    required this.BRAND_ID,
    required this.CATEGORY,
    required this.OFFER_PRICE,
    required this.SELLING_PRICE,
    required this.NAME,
    required this.createdAt,
    required this.updatedAt,
    this.COUNTRY_OF_ASSEMBLY = "",
    this.COUNTRY_OF_ORIGIN = "",
    this.HAS_MEASUREMENT = false,
    this.HAS_MERCHANT_RETURN_POLICY = false,
    this.HAS_VARIANT = false,
    this.IS_RATED = false,
    this.IS_RELATED_TO = "",
    this.MANUFACTURER = "", String ,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
        IS_RATED: json['IS_RATED'],
        HAS_MERCHANT_RETURN_POLICY: json['HAS_MERCHANT_RETURN_POLICY'],
        HAS_MEASUREMENT: json['HAS_MEASUREMENT'],
        HAS_VARIANT: json['HAS_VARIANT'],
        id: json['_id'],
        NAME: json['NAME'],
        CATEGORY: json['CATEGORY'],
        BRAND_ID: json['BRAND_ID'],
        COUNTRY_OF_ASSEMBLY: json['COUNTRY_OF_ASSEMBLY'],
        COUNTRY_OF_ORIGIN: json['COUNTRY_OF_ORIGIN'],
        IS_RELATED_TO: json['IS_RELATED_TO'],
        MANUFACTURER: json['MANUFACTURER'],
        IMAGE: json['IMAGE'],
        ALL_IMAGE:json['ALL_IMAGE'],
        OFFER_PRICE: json['OFFER_PRICE'],
        SELLING_PRICE: json['SELLING_PRICE'],
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt']);
  }
}