import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:muslim_app/Cubit/quran_cubit.dart';

import 'package:muslim_app/view/quran_web.dart';
import 'package:muslim_app/widgets/search.dart';
import 'package:muslim_app/widgets/small_category.dart';

class QuranAndMwaqeetRow extends StatelessWidget {
  const QuranAndMwaqeetRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SmallCategory(
            onTap: () {
              BlocProvider.of<QuranCubit>(context).webViewQuran();
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const QuranWebView();
              }));
            },
            imageIcon: 'asset/imageicon/quranmasmo3.png',
            title: 'القُرْآنُ مُرَتَّل'),
        SmallCategory(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const Search();
              }));
            },
            imageIcon: 'asset/imageicon/prayer-mat.png',
            title: 'مواقيتُ الصَّلاة'),
      ],
    );
  }
}
