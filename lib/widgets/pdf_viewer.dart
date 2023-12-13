import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:muslim_app/Model/book_model.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfViewer extends StatelessWidget {
  const PdfViewer({
    super.key,
    required this.bookModel,
  });

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);

    return PopScope(
      canPop: false,
      child: Scaffold(
          appBar: AppBar(
              leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  WidgetsFlutterBinding.ensureInitialized();
                  SystemChrome.setPreferredOrientations([
                    DeviceOrientation.portraitUp,
                    DeviceOrientation.portraitDown
                  ]);

                  // تحديد السلوك عند الضغط على زر الرجوع
                  Navigator.pop(context);
                },
              ),
              centerTitle: true,
              title: Text(bookModel.bookNameAndTitelAppBar,
                  style: const TextStyle(fontSize: 30))),
          body: SfPdfViewer.asset(
            bookModel.path,
            pageLayoutMode: PdfPageLayoutMode.continuous,
          )),
    );
  }
}
