import 'package:flutter/material.dart';
import 'package:muslim_app/view/all__book.dart';

class Category extends StatelessWidget {
  const Category({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const AllBook()),
        );
      },
      child: Container(
          decoration: BoxDecoration(
            color: const Color(0xff85E6C5),
            borderRadius: BorderRadius.circular(16),
          ),
          height: MediaQuery.of(context).size.height * 0.28,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('asset/imageicon/book.png',
                  scale: MediaQuery.of(context).size.height / 180),
              const SizedBox(height: 3),
              const Text(
                'المَكْتَبَةُ الشَّامِلَة',
                style: TextStyle(fontSize: 35),
              ),
            ],
          )),
    );
  }
}
