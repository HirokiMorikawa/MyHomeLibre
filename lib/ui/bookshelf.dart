import 'package:flutter/material.dart';
import 'package:my_home_library/model/book.dart';
import 'package:my_home_library/ui/container/book_card.dart';
import 'package:my_home_library/ui/user_selection.dart';

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
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: books.length,
              itemBuilder: (BuildContext _, int index) {
                final BookCard bookCard = BookCard(book: books[index]);
                return bookCard;
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const UserSelection();
                  },
                ),
              );
            },
            child: const Text("貸出・返却"),
          ),
        ],
      ),
    );
  }
}
