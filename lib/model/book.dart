import 'package:flutter/material.dart';

@immutable
class Book {
  final String title;
  final String author;
  final String publisher;

  const Book(
      {required this.title, required this.author, required this.publisher});
}
