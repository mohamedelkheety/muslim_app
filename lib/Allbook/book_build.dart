import 'package:flutter/material.dart';

import '../Model/book_model.dart';
import 'category_books_name.dart';

class BookBuild extends StatelessWidget {
  const BookBuild({
    super.key,
    required this.bookListModel,
    required this.nameWidget,
  });

  final List<BookModel> bookListModel;
  final String nameWidget;
  //

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: Text(nameWidget, style: const TextStyle(fontSize: 30))),
        body: ListView.builder(
            itemCount: bookListModel.length,
            itemBuilder: (context, index) {
              return CategoryBooksName(bookModel: bookListModel[index]);
            }));
  }
}
