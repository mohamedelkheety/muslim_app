import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:muslim_app/Cubit/khotba_state.dart';
import 'package:webview_flutter/webview_flutter.dart';

class KhotbaCubit extends Cubit<KotbaState> {
  KhotbaCubit() : super(KhotbaInitial());

  void webViewKhotba() {
    try {
      WebViewWidget(
          controller: WebViewController()
            ..setJavaScriptMode(JavaScriptMode.unrestricted)
            ..setBackgroundColor(const Color(0x00000000))
            ..setNavigationDelegate(
              NavigationDelegate(
                onPageStarted: (String url) {
                  emit(KotbaSuccess());
                  log('onStarted');
                },
                onPageFinished: (String url) {},
                onWebResourceError: (WebResourceError error) {},
              ),
            )
            ..loadRequest(Uri.parse(
                "https://audio.islamweb.net/audio/index.php?page=lectures&kh=1")));
      emit(KotbaLoading());
      log('loading');
    } catch (e) {
      emit(KotbaFialur());
      log('Fialur');
    }
  }
}
