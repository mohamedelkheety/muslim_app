import 'package:flutter/material.dart';
import 'package:muslim_app/widgets/category.dart';

import '../widgets/home_page/row_one.dart';
import '../widgets/home_page/row_three.dart';
import '../widgets/home_page/row_two.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "تَطبيقُ المُسْلِم",
            style: TextStyle(fontSize: 40),
          ),
        ),
        body: Padding(
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
        ));
  }
}
