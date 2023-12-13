import 'package:flutter/material.dart';

class CategoryBooks extends StatelessWidget {
  const CategoryBooks(
      {super.key,
      required this.name,
      required this.colorValue,
      this.widgetNavigator});
  final String name;
  final int colorValue;
  final Widget? widgetNavigator;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 6.0, right: 6, bottom: 3),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => widgetNavigator!));
        },
        child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.14,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                color: Color(colorValue)),
            child: Center(
              child: Text(name,
                  style: const TextStyle(fontSize: 35, color: Colors.white)),
            )),
      ),
    );
  }
}
