import 'package:flutter/material.dart';

class LoadingIndecator extends StatelessWidget {
  const LoadingIndecator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: CircularProgressIndicator(
              backgroundColor: Colors.white,
            ),
          ),
          Text(
            '...التحميل جارٍ',
            style: TextStyle(fontSize: 20),
          ),
          Text(
            'تحقق من سرعةالإنترنت',
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }
}
