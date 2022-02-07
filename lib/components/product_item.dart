import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
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
  const ProductItem(
      {Key? key,
      required this.IMAGE,
      required this.id,
      required this.ALL_IMAGE,
      required this.BRAND_ID,
      required this.CATEGORY,
      required this.OFFER_PRICE,
      required this.SELLING_PRICE,
      required this.NAME,
      required this.IS_RATED,
      required this.HAS_MERCHANT_RETURN_POLICY,
      required this.HAS_MEASUREMENT,
      required this.HAS_VARIANT,
      required this.COUNTRY_OF_ASSEMBLY,
      required this.COUNTRY_OF_ORIGIN,
      required this.IS_RELATED_TO,
      required this.MANUFACTURER,
      required this.createdAt,
      required this.updatedAt})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(height: 160,
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 4, // 20%
              child: Image.network(this.IMAGE),
            ),
            Expanded(
              flex: 6, // 60%
              child: const Text("data"),
            ),
          ],
        ),
      ),
    );
  }
}
