import 'package:flutter/material.dart';
import 'package:library_app/model/book.dart';

class BookDetailsScreen extends StatelessWidget {



  final Book book;

  BookDetailsScreen(this.book);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(book.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                book.imageUrl,
                height: 50,
                width: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  book.year.toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 17.0, fontStyle: FontStyle.italic),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  book.description,
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 22.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
