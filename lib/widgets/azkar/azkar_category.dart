import 'package:flutter/material.dart';
import 'package:muslim_app/widgets/azkar/azkar_widget.dart';

class AzkarCategory extends StatelessWidget {
  const AzkarCategory({
    super.key,
    required this.azkarModel,
  });
  final AzkarModel azkarModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey, borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Text(
              azkarModel.content,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'DecoTypeNaskhVariants',
                fontSize: fontSize,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
