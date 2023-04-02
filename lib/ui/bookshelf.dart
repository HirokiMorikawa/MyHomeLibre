import 'package:flutter/material.dart';
import 'package:my_home_library/model/book.dart';
import 'package:my_home_library/ui/container/book_card.dart';

class BookShelf extends StatefulWidget {
  const BookShelf({super.key});

  @override
  State<BookShelf> createState() => _BookShelfState();
}

class _BookShelfState extends State<BookShelf> {
  List<Book> books = [
    const Book(title: "test", author: "test", publisher: "test"),
    const Book(title: "test", author: "test", publisher: "test"),
    const Book(title: "test", author: "test", publisher: "test"),
    const Book(title: "test", author: "test", publisher: "test"),
    const Book(title: "test", author: "test", publisher: "test"),
    const Book(title: "test", author: "test", publisher: "test"),
    const Book(title: "test", author: "test", publisher: "test"),
    const Book(title: "test", author: "test", publisher: "test"),
    const Book(title: "test", author: "test", publisher: "test"),
    const Book(title: "test", author: "test", publisher: "test"),
    const Book(title: "test", author: "test", publisher: "test"),
    const Book(title: "test", author: "test", publisher: "test"),
    const Book(title: "test", author: "test", publisher: "test"),
    const Book(title: "test", author: "test", publisher: "test"),
    const Book(title: "test", author: "test", publisher: "test"),
    const Book(title: "test", author: "test", publisher: "test"),
    const Book(title: "test", author: "test", publisher: "test"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: books.length,
        itemBuilder: (BuildContext _, int index) {
          final BookCard bookCard = BookCard(book: books[index]);
          return bookCard;
        },
      ),
    );
  }
}
