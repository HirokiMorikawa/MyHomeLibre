import 'package:flutter/material.dart';
import 'package:my_home_library/model/book.dart';

class BookCard extends StatelessWidget {
  const BookCard({super.key, required this.book});

  final Book book;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(book.title),
        subtitle: Column(
          children: [
            Text(book.author),
            Text(book.publisher),
          ],
        ),
      ),
    );
  }
}
