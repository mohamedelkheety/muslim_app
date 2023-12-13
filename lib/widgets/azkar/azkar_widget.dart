import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';

import 'azkar_category.dart';

class AzkarWidget extends StatefulWidget {
  const AzkarWidget(
      {super.key, required this.azkarList, required this.azkarName});

  final List<AzkarModel> azkarList;
  final String azkarName;

  @override
  State<AzkarWidget> createState() => _AzkarWidgetState();
}

class _AzkarWidgetState extends State<AzkarWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text(widget.azkarName, style: const TextStyle(fontSize: 30))),
      floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xff1AACAC),
          child: const Icon(
            Icons.settings,
            size: 35,
          ),
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) {
                  return SizedBox(
                    height: 200,
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 12),
                          child: Text(
                            'تغير حجم الخط',
                            style: TextStyle(fontSize: 28),
                          ),
                        ),
                        FlutterSlider(
                          values: const [20],
                          max: 50,
                          min: 20,
                          onDragging: (handlerIndex, lowerValue, upperValue) {
                            fontSize = lowerValue;

                            setState(() {});
                          },
                        ),
                        ElevatedButton(
                          onPressed: () {
                            fontSize = 30;
                            setState(() {});
                          },
                          child: const Text(
                            'إعادة ضبط',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  );
                });
          }),
      body: ListView.builder(
          itemCount: widget.azkarList.length,
          itemBuilder: (context, index) {
            return AzkarCategory(azkarModel: widget.azkarList[index]);
          }),
    );
  }
}

class AzkarModel {
  final String content;

  AzkarModel({required this.content});
}

double? fontSize = 30;
