import 'package:flutter/material.dart';
import 'package:muslim_app/view/doaa_azkar.dart';
import 'package:muslim_app/widgets/sebha.dart';
import 'package:muslim_app/widgets/small_category.dart';

class AzkarAndSebhaRow extends StatelessWidget {
  const AzkarAndSebhaRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SmallCategory(
            onTap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const DoaaAzkarView();
                })),
            imageIcon: 'asset/imageicon/doaa.png',
            title: 'أدعِيَة وأذكار'),
        SmallCategory(
            onTap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const ListSepha();
                })),
            imageIcon: 'asset/imageicon/sepha.png',
            title: 'السِّبحَة'),
      ],
    );
  }
}
