import 'package:flutter/material.dart';

class TimeCategory extends StatelessWidget {
  const TimeCategory({
    super.key,
    required this.salaName,
    required this.salaTime,
  });
  final String salaName;
  final String salaTime;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  salaTime,
                  style: const TextStyle(
                    fontSize: 25,
                  ),
                  textDirection: TextDirection.ltr,
                ),
                Text(
                  salaName,
                  style: const TextStyle(
                      fontSize: 29, fontFamily: 'DecoTypeNaskhVariants'),
                  textDirection: TextDirection.rtl,
                ),
              ],
            ),
          )),
    );
  }
}
