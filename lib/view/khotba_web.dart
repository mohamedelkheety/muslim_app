import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:muslim_app/Cubit/khotba_cubit.dart';

import 'package:muslim_app/Cubit/khotba_state.dart';
import 'package:muslim_app/view/quran_web.dart';
import 'package:muslim_app/widgets/loading_indecator.dart';

class KhotbaWebView extends StatelessWidget {
  const KhotbaWebView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'خُطَبٌ مسمُوْعَة',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
      body: BlocBuilder<KhotbaCubit, KotbaState>(
        builder: (context, state) {
          if (state is KotbaLoading) {
            return const LoadingIndecator();
          } else if (state is KotbaSuccess) {
            return const CustomWebView(
                urlSite:
                    "https://audio.islamweb.net/audio/index.php?page=lectures&kh=1");
          } else {
            return const Scaffold(
              body: Center(
                child: Text('ربما حدث خطأ..أعد المحاولة'),
              ),
            );
          }
        },
      ),
    );
  }
}
