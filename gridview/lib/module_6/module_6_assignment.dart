import 'package:flutter/material.dart';

void main() {
  runApp(MyGallery());
}

class MyGallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GalleryApp(),
    );
  }
}

class GalleryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> imagesPath = [
      'https://www.pasadenastarnews.com/wp-content/uploads/2023/06/PAS-L-COL-PHS-0624-01-1.jpg?fit=620%2C9999px&ssl=1',
      'https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/RedCat_8727.jpg/1200px-RedCat_8727.jpg',
      'https://news.harvard.edu/wp-content/uploads/2022/03/20220304_birds_iStock-1210238917-scaled.jpg',
      'https://www.alleycat.org/wp-content/uploads/2019/03/FELV-cat.jpg',
      'https://www.pasadenastarnews.com/wp-content/uploads/2023/06/PAS-L-COL-PHS-0624-01-1.jpg?fit=620%2C9999px&ssl=1',
      'https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/RedCat_8727.jpg/1200px-RedCat_8727.jpg',
    ];

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Photo Gallery')),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 12),
              Text(
                'Welcome to My Photo Gallery!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 15),
              Container(
                width: double.infinity, // Ensure TextField takes full width
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search Photos...',
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 18),
              Container(
                height: 250, // Adjust this height as needed
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  ),
                  itemCount: imagesPath.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        final snackbar = SnackBar(
                          content: Text('You have clicked $index'),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackbar);
                      },
                      child: Container(
                        margin: EdgeInsets.all(1),
                        color: Colors.white,
                        child: Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.network(
                                imagesPath[index],
                                width: 80,
                                height: 80,
                                fit: BoxFit
                                    .cover, // Provide the complete URL of the image here
                              ),
                              Text('Photo $index'),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 5),
              Container(
                child: Column(
                  ///in list View i have used offline images
                  children: [
                    ListTile(
                      title: Text('Photo 1 '),
                      subtitle: Text('Description for photo 1'),
                      leading: ClipOval(
                        child: Image.asset(
                          'images/3.jpg',
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text('Photo 2 '),
                      subtitle: Text('Description for photo 4'),
                      leading: ClipOval(
                        child: Image.asset(
                          'images/bird1.jpg',
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text('Photo 3 '),
                      subtitle: Text('Description for photo 2'),
                      leading: ClipOval(
                        child: Image.asset(
                          'images/bird2.jpg',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50), // Add some space at the bottom
              Center(
                child: FloatingActionButton(
                  child: Icon(Icons.arrow_circle_up_rounded),
                  onPressed: () {
                    final snackbar = SnackBar(
                      content: Text('Photos Uploaded Successfully !'),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackbar);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
