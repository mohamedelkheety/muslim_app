import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:muslim_app/Cubit/web_state.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewCubit extends Cubit<WebState> {
  WebViewCubit() : super(KhotbaInitial());

  void webViewWidget({required String url}) {
    try {
      emit(WebLoading());
      log('loading');
      WebViewWidget(
          controller: WebViewController()
            ..loadRequest(Uri.parse(url))
            ..setJavaScriptMode(JavaScriptMode.unrestricted)
            ..setBackgroundColor(const Color(0x00000000))
            ..setNavigationDelegate(
              NavigationDelegate(
                onPageStarted: (String url) {
                  emit(WebSuccess());
                  log('onStarted');
                },
                onPageFinished: (String url) {},
                onWebResourceError: (WebResourceError error) {},
              ),
            ));
    } catch (e) {
      emit(WebFialur());
      log('Fialur');
    }
  }
}
