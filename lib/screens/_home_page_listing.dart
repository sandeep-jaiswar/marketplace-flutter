import 'package:flutter/material.dart';
import 'package:marketplace/components/_listing_product_card.dart';

class HomePageListing extends StatefulWidget {
  const HomePageListing({Key? key}) : super(key: key);

  @override
  _HomePageListingState createState() => _HomePageListingState();
}

class _HomePageListingState extends State<HomePageListing> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();
  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Search Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Orders Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Profile Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Cart Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (_pageController.hasClients) {
        _pageController.animateToPage(index,
            duration: Duration(milliseconds: 1), curve: Curves.easeInOut);
      }
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                ListingProductCard(),
                ListingProductCard(),
                ListingProductCard(),
                ListingProductCard(),
                ListingProductCard(),
                ListingProductCard(),
                ListingProductCard(),
              ],
            )),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        clipBehavior: Clip.antiAlias,
        color: Theme.of(context).colorScheme.primary,
        child: Row(
          children: [
            IconButton(
                icon: Icon(Icons.home_outlined),
                color: Theme.of(context).colorScheme.background,
                onPressed: () {
                  _onItemTapped(0);
                }),
            IconButton(
                icon: Icon(Icons.search_rounded),
                color: Theme.of(context).colorScheme.background,
                onPressed: () {
                  _onItemTapped(1);
                }),
            Spacer(),
            IconButton(
                icon: Icon(Icons.list_alt_rounded),
                color: Theme.of(context).colorScheme.background,
                onPressed: () {
                  _onItemTapped(2);
                }),
            IconButton(
                icon: Icon(Icons.person_outline_rounded),
                color: Theme.of(context).colorScheme.background,
                onPressed: () {
                  _onItemTapped(3);
                }),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add_shopping_cart_rounded,
          ),
          backgroundColor: Theme.of(context).colorScheme.primary,
          elevation: 2.0,
          onPressed: () {
            _onItemTapped(4);
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
