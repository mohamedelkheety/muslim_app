import 'package:flutter/material.dart';
import 'package:muslim_app/Allbook/book_build.dart';

import '../Model/book_model.dart';
import '../widgets/book/category_books.dart';

class AllBook extends StatelessWidget {
  const AllBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: const Text('المَكْتَبَةُ الشَّامِلَة',
                style: TextStyle(fontSize: 30))),
        body: ListView(
          children: [
            CategoryBooks(
              widgetNavigator: BookBuild(
                nameWidget: 'التَّفسيْر',
                bookListModel: [
                  BookModel(
                      path: 'asset/book/المختصر.pdf',
                      bookNameAndTitelAppBar: 'المختصر في التفسير')
                ],
              ),
              name: 'التَّفسيْر',
              colorValue: 0xff0e669c,
            ),
            CategoryBooks(
              widgetNavigator: BookBuild(bookListModel: [
                BookModel(
                    path: 'asset/book/فقه السنة 1_.pdf',
                    bookNameAndTitelAppBar: 'فقه السنة الجزء الأول'),
                BookModel(
                    path: 'asset/book/فقه السنة 2_.pdf',
                    bookNameAndTitelAppBar: 'فقه السنة الجزء الثاني'),
                BookModel(
                    path: 'asset/book/- فقه السنة _ 3 _.pdf',
                    bookNameAndTitelAppBar: 'فقه السنة الجزء الثالث'),
              ], nameWidget: 'الفقْه'),
              name: 'الفقْه',
              colorValue: 0xff3A98B9,
            ),
            CategoryBooks(
              widgetNavigator: BookBuild(bookListModel: [
                BookModel(
                    path: 'asset/book/الأربعون النووية.pdf',
                    bookNameAndTitelAppBar: 'الأربعون النووية'),
                BookModel(
                    path: 'asset/book/صحيح مسلم 2.pdf',
                    bookNameAndTitelAppBar: 'صحيحُ مُسلم')
              ], nameWidget: 'الحديْث'),
              name: 'الحديْث',
              colorValue: 0xff7286D3,
            ),
            CategoryBooks(
              widgetNavigator: BookBuild(bookListModel: [
                BookModel(
                    path: 'asset/book/1  السيرة النبوية.pdf',
                    bookNameAndTitelAppBar: 'السيرة النبوية لابن هشام 1'),
                BookModel(
                    path: 'asset/book/السيرة النبوية 2.pdf',
                    bookNameAndTitelAppBar: 'السيرة النبوية لابن هشام 2'),
                BookModel(
                    path: 'asset/book/السيرة النبوية 3.pdf',
                    bookNameAndTitelAppBar: 'السيرة النبوية لابن هشام 3'),
                BookModel(
                    path: 'asset/book/السيرة النبوية 4.pdf',
                    bookNameAndTitelAppBar: 'السيرة النبوية لابن هشام 4')
              ], nameWidget: 'السِّيْرة النبوية '),
              name: 'السِّيْرة',
              colorValue: 0xff82AAE3,
            ),
            CategoryBooks(
              widgetNavigator: BookBuild(bookListModel: [
                BookModel(
                    path: 'asset/book/النحو الواف2.pdf',
                    bookNameAndTitelAppBar: 'النحو الوافي'),
                BookModel(
                    path: 'asset/book/الصرف الكافي.pdf',
                    bookNameAndTitelAppBar: 'الصرف الكافي')
              ], nameWidget: 'اللُغة'),
              name: 'اللُغة',
              colorValue: 0xff3C79F5,
            ),
            CategoryBooks(
              widgetNavigator: BookBuild(bookListModel: [
                BookModel(
                    path: 'asset/book/المعلقات العشر.pdf',
                    bookNameAndTitelAppBar: 'المعلقات العشر'),
                BookModel(
                    path: 'asset/book/المتنبي.pdf',
                    bookNameAndTitelAppBar: ' ديوان المتنبي'),
                BookModel(
                    path: 'asset/book/ديوان أبى  العتاهية.pdf',
                    bookNameAndTitelAppBar: 'ديوان أبي  العتاهية'),
                BookModel(
                    path: 'asset/book/أبو العلاء المعري.pdf',
                    bookNameAndTitelAppBar: 'ديوان أبي العلاء المعري'),
                BookModel(
                    path: 'asset/book/ديوان حافظ إبراهيم.pdf',
                    bookNameAndTitelAppBar: 'ديوان حافظ إبراهيم'),
              ], nameWidget: 'الشِّعر'),
              name: 'الشِّعر',
              colorValue: 0xff439A97,
            ),
          ],
        ));
  }
}
