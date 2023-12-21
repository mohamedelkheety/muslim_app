import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:muslim_app/Cubit/web_cubit.dart';

import 'package:muslim_app/view/web_view_custom.dart';
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
              BlocProvider.of<WebViewCubit>(context)
                  .webViewWidget(url: 'https://mp3quran.net/ar/s_gmd');
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const WebView(
                  url: 'https://mp3quran.net/ar/s_gmd',
                  titelAppBar: 'القُرْآنُ مُرَتَّل',
                );
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
