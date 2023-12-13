import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:muslim_app/Model/api_model.dart';
import 'package:muslim_app/service/api_service.dart';
import 'package:muslim_app/widgets/loading_indecator.dart';
import 'package:muslim_app/widgets/mwaqeet.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat("DD-MM-YYYY").format(now);
    return Scaffold(
        backgroundColor: const Color.fromRGBO(26, 172, 172, 1),
        appBar: AppBar(
            centerTitle: true,
            title:
                const Text('مواقيت الصلاة ', style: TextStyle(fontSize: 30))),
        body: isLoading
            ? const LoadingIndecator()
            : Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: TextField(
                    onSubmitted: (value) async {
                      isLoading = true;
                      setState(() {});
                      ApiModel apiModel = await ApiService(Dio()).getSalaTime(
                        cityName: value,
                        history: formattedDate,
                      );
                      isLoading = false;
                      setState(() {});
                      // ignore: use_build_context_synchronously
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return Mwaqeet(
                          apiModel: apiModel,
                          cityName: value,
                        );
                      }));
                    },
                    decoration: InputDecoration(
                        labelText: ' ( الإنترنت مطلوب)اكتب اسم المدينة',
                        labelStyle: const TextStyle(
                            decorationStyle: TextDecorationStyle.solid,
                            color: Colors.white,
                            fontSize: 25,
                            fontFamily: 'DecoTypeNaskhVariants'),
                        hintText:
                            'Alexandria,Cairoالكتابة باللغة الإنجليزية مثل ',
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(color: Colors.white)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(color: Colors.white))),
                  ),
                ),
              ));
  }
}
