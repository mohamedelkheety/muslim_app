import 'package:flutter/material.dart';

class SmallCategory extends StatelessWidget {
  const SmallCategory({
    super.key,
    required this.imageIcon,
    required this.title,
    this.onTap,
    this.height,
    this.width,
  });
  final String imageIcon;
  final String title;
  final void Function()? onTap;
  final double? height;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          height: MediaQuery.of(context).size.height * 0.19,
          width: MediaQuery.of(context).size.width * 0.46,
          decoration: BoxDecoration(
            color: const Color(0xff1AACAC),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(imageIcon,
                  scale: MediaQuery.of(context).size.height / 115),
              Text(
                title,
                style: const TextStyle(fontSize: 28),
              ),
            ],
          )),
    );
  }
}
