import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:muslim_app/Cubit/quran_cubit.dart';
import 'package:muslim_app/Cubit/quran_state.dart';
import 'package:muslim_app/widgets/loading_indecator.dart';
import 'package:webview_flutter/webview_flutter.dart';

class QuranWebView extends StatelessWidget {
  const QuranWebView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'القُرْآنُ مُرَتَّل',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
      body: BlocBuilder<QuranCubit, QuranState>(
        builder: (context, state) {
          if (state is QuranLoading) {
            return const LoadingIndecator();
          } else if (state is QuranSuccess) {
            return const CustomWebView(
              urlSite: "https://mp3quran.net/ar/s_gmd",
            );
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

class CustomWebView extends StatelessWidget {
  const CustomWebView({
    super.key,
    required this.urlSite,
  });
  final String urlSite;
  @override
  Widget build(BuildContext context) {
    return WebViewWidget(
        controller: WebViewController()
          ..setJavaScriptMode(JavaScriptMode.unrestricted)
          ..setBackgroundColor(const Color(0x00000000))
          ..setNavigationDelegate(
            NavigationDelegate(
              onProgress: (int progress) {
                // Update loading bar.
              },
              onPageStarted: (String url) {},
              onPageFinished: (String url) {},
              onWebResourceError: (WebResourceError error) {},
            ),
          )
          ..loadRequest(Uri.parse(urlSite)));
  }
}
