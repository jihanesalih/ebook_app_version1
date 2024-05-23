import 'package:flutter/material.dart';

class CategoriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categories'),
        titleTextStyle: TextStyle(color: Colors.white),
        backgroundColor: Colors.black,
      ),
      body: ListView.builder(
        itemCount: 8,
        itemBuilder: (context, index) {
          String category;
          switch (index) {
            case 0:
              category = 'Fiction';
              break;
            case 1:
              category = 'Non-Fiction';
              break;
            case 2:
              category = 'Children\'s Books';
              break;
            case 3:
              category = 'Poetry';
              break;
            case 4:
              category = 'Graphic Novels and Comics';
              break;
            case 5:
              category = 'Romance';
              break;
            case 6:
              category = 'Science and Technology';
              break;
            case 7:
              category = 'Spirituality and Religion';
              break;
            default:
              category = '';
          }
          return Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(30),
              color: const Color.fromARGB(255, 0, 0, 0),
            ),
            child: ListTile(
              title: Text(
                category,
                style:
                    TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
              ),
            ),
          );
        },
      ),
    );
  }
}
