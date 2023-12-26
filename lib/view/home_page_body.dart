import 'package:flutter/material.dart';
import 'package:muslim_app/widgets/home_page/category.dart';
import 'package:muslim_app/widgets/home_page/row_one.dart';
import 'package:muslim_app/widgets/home_page/row_three.dart';
import 'package:muslim_app/widgets/home_page/row_two.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(children: [
        const Category(),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.011,
        ),
        const QuranAndMwaqeetRow(),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.011,
        ),
        const AzkarAndSebhaRow(),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.011,
        ),
        const DevloperAndKhotabRow(),
      ]),
    );
  }
}
