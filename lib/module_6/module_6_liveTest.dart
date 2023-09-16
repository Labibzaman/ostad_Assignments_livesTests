import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyGallery());
}

class MyGallery extends StatelessWidget {
  const MyGallery({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListApp(),
    );
  }
}

class ListApp extends StatelessWidget {
  const ListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'My Shopping List',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            SizedBox(width: 100),
            Icon(
              CupertinoIcons.cart,
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.shopping_basket),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    'Apples',
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.shopping_basket),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    'Bannas',
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.shopping_basket),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    'Bread',
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.shopping_basket),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    'Milk',
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.shopping_basket),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    'Eggs',
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
