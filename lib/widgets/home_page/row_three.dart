import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:muslim_app/Cubit/web_cubit.dart';
import 'package:muslim_app/view/developer.dart';
import 'package:muslim_app/view/web_view_custom.dart';
import 'package:muslim_app/widgets/small_category.dart';

class DevloperAndKhotabRow extends StatelessWidget {
  const DevloperAndKhotabRow({
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
                  return const Dveloper();
                })),
            imageIcon: 'asset/imageicon/information.png',
            title: 'مَن نَحن؟'),
        SmallCategory(
            onTap: () {
              BlocProvider.of<WebViewCubit>(context).webViewWidget(
                  url:
                      'https://audio.islamweb.net/audio/index.php?page=lectures&kh=1');
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const WebView(
                    url:
                        'https://audio.islamweb.net/audio/index.php?page=lectures&kh=1',
                    titelAppBar: 'خُطَبٌ مسمُوْعَة');
              }));
            },
            imageIcon: 'asset/imageicon/kotba.png',
            title: 'خُطَبٌ مسمُوْعَة'),
      ],
    );
  }
}
