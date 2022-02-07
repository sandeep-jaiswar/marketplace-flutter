import 'package:flutter/material.dart';

class HomeWrapper extends StatefulWidget {
  const HomeWrapper({Key? key}) : super(key: key);

  @override
  _HomeWrapperState createState() => _HomeWrapperState();
}

class _HomeWrapperState extends State<HomeWrapper> {
  final pincode = 400097;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          MaterialBanner(
            content: const Text('Banner 1'),
            actions: [
              FlatButton(
                child: const Text('ACTION 1'),
                onPressed: () {},
              ),
              FlatButton(
                child: const Text('ACTION 2'),
                onPressed: () {},
              ),
            ],
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                ListTile(
                  title: const Text('Deal Of The Day'),
                  subtitle: Text(
                    'Secondary Text',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    FlatButton(
                      onPressed: () {
                        // Perform some action
                      },
                      child: const Text('see more'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.arrow_drop_down_circle),
                  title: const Text('Most Loved Brands'),
                  subtitle: Text(
                    'Secondary Text',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    FlatButton(
                      onPressed: () {
                        // Perform some action
                      },
                      child: const Text('ACTION 1'),
                    ),
                    FlatButton(
                      onPressed: () {
                        // Perform some action
                      },
                      child: const Text('ACTION 2'),
                    ),
                  ],
                ),
                Image.network(
                    'https://foodpop.s3.us-east-2.amazonaws.com/images/chinese.jpg'),
              ],
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.arrow_drop_down_circle),
                  title: const Text('Just Launched'),
                  subtitle: Text(
                    'Secondary Text',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    FlatButton(
                      onPressed: () {
                        // Perform some action
                      },
                      child: const Text('ACTION 1'),
                    ),
                    FlatButton(
                      onPressed: () {
                        // Perform some action
                      },
                      child: const Text('ACTION 2'),
                    ),
                  ],
                ),
                Image.network(
                    'https://foodpop.s3.us-east-2.amazonaws.com/images/deliveredQuickly.png'),
              ],
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.arrow_drop_down_circle),
                  title: const Text('Super Value'),
                  subtitle: Text(
                    'Secondary Text',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    FlatButton(
                      onPressed: () {
                        // Perform some action
                      },
                      child: const Text('ACTION 1'),
                    ),
                    FlatButton(
                      onPressed: () {
                        // Perform some action
                      },
                      child: const Text('ACTION 2'),
                    ),
                  ],
                ),
                Image.network(
                    'https://foodpop.s3.us-east-2.amazonaws.com/images/food1.jpeg'),
              ],
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.arrow_drop_down_circle),
                  title: const Text('Special Offers Just For You'),
                  subtitle: Text(
                    'Secondary Text',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    FlatButton(
                      onPressed: () {
                        // Perform some action
                      },
                      child: const Text('ACTION 1'),
                    ),
                    FlatButton(
                      onPressed: () {
                        // Perform some action
                      },
                      child: const Text('ACTION 2'),
                    ),
                  ],
                ),
                Image.network(
                    'https://foodpop.s3.us-east-2.amazonaws.com/images/deliveredQuickly.png'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
