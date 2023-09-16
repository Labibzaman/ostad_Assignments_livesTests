import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(MyGallery());
}
class MyGallery extends StatelessWidget {
  const MyGallery({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: GalleryApp(),
    );
  }
}

class GalleryApp extends StatelessWidget {
  const GalleryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Center(
           child:
           Text('Photo Gallery')
       ),
      ),

      body: Column(


        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 12,),
          Text('Welcome to My Photo Gallery!',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 15,),
          TextField(

            decoration: InputDecoration(
              hintText: 'Search Photos...',
              border: OutlineInputBorder(),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(7)
              )
            ),
          ),
          GridView(
              gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
            children: [
              Icon(Icons.adb_rounded),
              Icon(Icons.adb_rounded),
              Icon(Icons.adb_rounded),
              Icon(Icons.adb_rounded),
              Icon(Icons.adb_rounded),
              Icon(Icons.adb_rounded),
              Icon(Icons.adb_rounded),
            ],
          ),
        ],
      ),

    );
  }
}
