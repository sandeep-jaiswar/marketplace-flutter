import 'package:flutter/material.dart';
import 'package:marketplace/components/_home_wrapper.dart';
import 'package:marketplace/components/_product_listing.dart';

class HomePageListing extends StatefulWidget {
  const HomePageListing({Key? key}) : super(key: key);

  @override
  _HomePageListingState createState() => _HomePageListingState();
}

class _HomePageListingState extends State<HomePageListing> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();
  static const List<Widget> _widgetOptions = <Widget>[
    const HomeWrapper(),
    const ProductListing(),
    Text('Cart Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Orders Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('More Page',
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

  int _currentIndex = 0;

  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 3.0,
          title: Text(
            'MARKETPLACE',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.primary,
              fontSize: 20,
              letterSpacing: 2.0,
            ),
          ),
          actions: [
            FlatButton(
              child: const Text('Mumbai - 400097'),
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Wrap(
                      children: [const Text("set Location")],
                    );
                  },
                );
              },
            ),
          ],
          backgroundColor: Theme.of(context).colorScheme.background,
        ),
        body: Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(children: [
              _widgetOptions[_currentIndex],
            ]),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          backgroundColor: colorScheme.surface,
          selectedItemColor: colorScheme.onSurface,
          unselectedItemColor: colorScheme.onSurface.withOpacity(.60),
          selectedLabelStyle: textTheme.caption,
          unselectedLabelStyle: textTheme.caption,
          onTap: (value) {
            // Respond to item press.
            setState(() => _currentIndex = value);
          },
          items: [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home_outlined),
            ),
            BottomNavigationBarItem(
              label: 'Category',
              icon: Icon(Icons.category_outlined),
            ),
            BottomNavigationBarItem(
              label: 'Cart',
              icon: Icon(Icons.add_shopping_cart_rounded),
            ),
            BottomNavigationBarItem(
              label: 'Orders',
              icon: Icon(Icons.library_books),
            ),
            BottomNavigationBarItem(
              label: 'More',
              icon: Icon(Icons.more_vert_rounded),
            ),
          ],
        ),
      ),
    );
  }
}
