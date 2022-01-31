import 'package:flutter/material.dart';

class CategoryPageListing extends StatefulWidget {
  const CategoryPageListing({Key? key}) : super(key: key);

  @override
  _CategoryPageListingState createState() => _CategoryPageListingState();
}

class _CategoryPageListingState extends State<CategoryPageListing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            IconButton(icon: Icon(Icons.home_outlined), onPressed: () {}),
            IconButton(icon: Icon(Icons.search_rounded), onPressed: () {}),
            Spacer(),
            IconButton(icon: Icon(Icons.list_alt_rounded), onPressed: () {}),
            IconButton(
                icon: Icon(Icons.person_outline_rounded), onPressed: () {}),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add_shopping_cart_outlined), onPressed: () {}),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
