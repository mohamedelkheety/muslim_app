import 'package:flutter/material.dart';
import 'package:muslim_app/Model/book_model.dart';
import 'package:muslim_app/widgets/pdf_viewer.dart';

class CategoryBooksName extends StatelessWidget {
  const CategoryBooksName({
    super.key,
    required this.bookModel,
  });
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 6.0, right: 6, bottom: 3),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
                builder: (BuildContext context) =>
                    PdfViewer(bookModel: bookModel)),
            (Route<dynamic> route) => true,
          );
        },
        child: Container(
            width: double.infinity,
            height: 85,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                color: Color(0xff0e669c)),
            child: Center(
              child: Text(bookModel.bookNameAndTitelAppBar,
                  style: const TextStyle(fontSize: 30, color: Colors.white)),
            )),
      ),
    );
  }
}
