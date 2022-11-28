import 'package:flutter/material.dart';
import 'package:library_app/model/book.dart';
import 'package:library_app/screens/book_details_screen.dart';

class BookListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'LIBRARY',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          leading: Icon(Icons.bookmark, size: 30),
        ),
        body: ListView.builder(
            itemCount: bookList.length,
            itemBuilder: (context, index) {
              Book book = bookList[index];
              return Card(
                elevation: 5,
                shadowColor: Theme.of(context).primaryColor,
                child: ListTile(
                  title: Text(book.title),
                  subtitle: Text(book.year.toString()),
                  leading: Image.network(book.imageUrl),
                  trailing: Icon(Icons.arrow_forward_rounded),
                  onTap: () {
                    showModalBottomSheet(
                        barrierColor: Theme.of(context)
                            .primaryColorLight
                            .withOpacity(0.2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        elevation: 5,
                        context: context,
                        builder: (context) => BookDetailsScreen(book));
                  },
                ),
              );
            }));
  }
}
