import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:muslim_app/Cubit/quran_state.dart';
import 'package:webview_flutter/webview_flutter.dart';

class QuranCubit extends Cubit<QuranState> {
  QuranCubit() : super(QuranInitial());

  void webViewQuran() {
    try {
      WebViewWidget(
          controller: WebViewController()
            ..setJavaScriptMode(JavaScriptMode.unrestricted)
            ..setBackgroundColor(const Color(0x00000000))
            ..setNavigationDelegate(
              NavigationDelegate(
                onPageStarted: (String url) {
                  emit(QuranSuccess());
                  log('onStarted');
                },
                onPageFinished: (String url) {},
                onWebResourceError: (WebResourceError error) {},
              ),
            )
            ..loadRequest(Uri.parse(
              "https://mp3quran.net/ar/s_gmd",
            )));
      emit(QuranLoading());
      log('loading');
    } catch (e) {
      emit(QuranFialur());
      log('Fialur');
    }
  }
}
