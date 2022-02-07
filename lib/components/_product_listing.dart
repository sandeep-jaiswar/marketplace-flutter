import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:marketplace/components/product_item.dart';
import 'package:marketplace/models/product.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class ProductListing extends StatefulWidget {
  const ProductListing({Key? key}) : super(key: key);

  @override
  _ProductListingState createState() => _ProductListingState();
}

class _ProductListingState extends State<ProductListing> {
  Future<List<Product>> fetchProduct() async {
    String productURl = 'https://groceryapis.herokuapp.com/api/product';
    final response = await http.get(Uri.parse(productURl),
        headers: {"Content-Type": "application/json"});
    List jsonResponse = json.decode(response.body);
    return jsonResponse.map((job) => new Product.fromJson(job)).toList();
  }

  List<Product> loadedProducts = [
    Product(
        IS_RATED: false,
        HAS_MERCHANT_RETURN_POLICY: true,
        HAS_MEASUREMENT: false,
        HAS_VARIANT: false,
        id: "61fc2183d9baab75b45c4fee",
        NAME: "Mantra Jaggery Organic Powder Pouch 450 gm",
        CATEGORY: "61fc1eeb697692ae44ef234a",
        BRAND_ID: "61fc1d05531e66bcecd3b6b4",
        COUNTRY_OF_ASSEMBLY: "India",
        COUNTRY_OF_ORIGIN: "India",
        IS_RELATED_TO: "Cerals|Powder|Organic|Mantra",
        MANUFACTURER: "India",
        IMAGE:
            "https://grocery-master.s3.us-east-2.amazonaws.com/24-mantra-jaggery-organic-powder-pouch-450-gm-230832249-f2cg6.jpg",
        ALL_IMAGE:
            "https://grocery-master.s3.us-east-2.amazonaws.com/24-mantra-jaggery-organic-powder-pouch-450-gm-230832249-f2cg6.jpg",
        OFFER_PRICE: 122,
        SELLING_PRICE: 125,
        createdAt: "2022-02-03T18:40:03.143Z",
        updatedAt: "2022-02-03T18:40:03.143Z")
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
         FutureBuilder<List<Product>>(
      future: fetchProduct(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
              scrollDirection: Axis.vertical,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: snapshot.data!.length,
              itemBuilder: (ctx, i) => ProductItem(
                    id: snapshot.data![i].id,
                    IMAGE: snapshot.data![i].IMAGE,
                    ALL_IMAGE: snapshot.data![i].ALL_IMAGE,
                    BRAND_ID: snapshot.data![i].BRAND_ID,
                    CATEGORY: snapshot.data![i].CATEGORY,
                    OFFER_PRICE: snapshot.data![i].OFFER_PRICE,
                    SELLING_PRICE: snapshot.data![i].SELLING_PRICE,
                    NAME: snapshot.data![i].NAME,
                    createdAt: snapshot.data![i].createdAt,
                    updatedAt: snapshot.data![i].updatedAt,
                    COUNTRY_OF_ASSEMBLY: snapshot.data![i].COUNTRY_OF_ASSEMBLY,
                    COUNTRY_OF_ORIGIN: snapshot.data![i].COUNTRY_OF_ORIGIN,
                    HAS_MEASUREMENT: snapshot.data![i].HAS_MEASUREMENT,
                    HAS_MERCHANT_RETURN_POLICY:
                        snapshot.data![i].HAS_MERCHANT_RETURN_POLICY,
                    HAS_VARIANT: snapshot.data![i].HAS_VARIANT,
                    IS_RATED: snapshot.data![i].IS_RATED,
                    IS_RELATED_TO: snapshot.data![i].IS_RELATED_TO,
                    MANUFACTURER: snapshot.data![i].MANUFACTURER,
                  ));
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }
        return const CircularProgressIndicator();
      },
    )
      ],),
    );
  }
}
