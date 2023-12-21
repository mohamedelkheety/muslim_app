import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:muslim_app/Cubit/web_cubit.dart';

import 'package:muslim_app/Cubit/web_state.dart';
import 'package:muslim_app/widgets/loading_indecator.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebView extends StatelessWidget {
  const WebView({
    super.key,
    required this.url,
    required this.titelAppBar,
  });
  final String url;
  final String titelAppBar;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          titelAppBar,
          style: const TextStyle(
            fontSize: 30,
          ),
        ),
      ),
      body: BlocBuilder<WebViewCubit, WebState>(
        builder: (context, state) {
          if (state is WebLoading) {
            return const LoadingIndecator();
          } else if (state is WebSuccess) {
            return WebViewWidget(
                controller: WebViewController()
                  ..setJavaScriptMode(JavaScriptMode.unrestricted)
                  ..setBackgroundColor(const Color(0x00000000))
                  ..loadRequest(Uri.parse(url))
                  ..setNavigationDelegate(
                    NavigationDelegate(
                      onProgress: (int progress) {
                        // Update loading bar.
                      },
                      onPageStarted: (String url) {},
                      onPageFinished: (String url) {},
                      onWebResourceError: (WebResourceError error) {},
                    ),
                  ));
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
