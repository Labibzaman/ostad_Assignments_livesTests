import 'package:flutter/material.dart';

void main() {
  runApp(MyGridViewApp());
}

class MyGridViewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GridViewScreen(),
    );
  }
}

class GridViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Grid View'),
      ),
      body: ImageGridView(),
    );
  }
}

class ImageGridView extends StatelessWidget {
  final List<String> imageUrls = [
    'https://www.alleycat.org/wp-content/uploads/2019/03/FELV-cat.jpg',
    'https://us.feliway.com/cdn/shop/articles/FELIWAY___June_2020___How_Much_Space_Does_A_Cat_Need-2.webp?v=1667410689',
    'https://static01.nyt.com/images/2021/09/14/science/07CAT-STRIPES/07CAT-STRIPES-mediumSquareAt3X-v2.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/RedCat_8727.jpg/1200px-RedCat_8727.jpg',        'https://static01.nyt.com/images/2021/09/14/science/07CAT-STRIPES/07CAT-STRIPES-mediumSquareAt3X-v2.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRELPz5irftrTO1VQQsNX5PGYUp8_m1b2FrHA&usqp=CAU',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 250,
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, // Adjust the number of columns as needed
            ),
            itemCount: imageUrls.length,
            itemBuilder: (context, index) {
              return Card(
                elevation: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      imageUrls[index],
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 8),
                    Text('Image $index'),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
