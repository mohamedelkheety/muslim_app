import 'package:flutter/material.dart';
import 'package:muslim_app/widgets/home_page/category.dart';

import '../widgets/home_page/row_one.dart';
import '../widgets/home_page/row_three.dart';
import '../widgets/home_page/row_two.dart';
import 'home_page_body.dart';

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
        body: const HomePageBody());
  }
}
