import 'package:flutter/material.dart';
import 'package:muslim_app/Model/api_model.dart';

import 'time_category.dart';

class Mwaqeet extends StatelessWidget {
  const Mwaqeet({
    super.key,
    required this.apiModel,
    this.cityName,
  });
  final ApiModel apiModel;
  final String? cityName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff1AACAC),
        appBar: AppBar(
            centerTitle: true,
            title:
                const Text('مواقيت الصلاة ', style: TextStyle(fontSize: 30))),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  'اليوم:${apiModel.dayName}${apiModel.date}',
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontFamily: 'DecoTypeNaskhVariants'),
                  textDirection: TextDirection.rtl,
                ),
              ),
              Center(
                child: Text(
                  'المدينة:$cityName',
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontFamily: 'DecoTypeNaskhVariants'),
                  textDirection: TextDirection.rtl,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TimeCategory(
                salaName: 'الفجر :',
                salaTime: apiModel.fajr,
              ),
              TimeCategory(
                salaName: 'الشروق :',
                salaTime: apiModel.sunrise,
              ),
              TimeCategory(
                salaName: 'الظهر :',
                salaTime: apiModel.dhuhr,
              ),
              TimeCategory(
                salaName: 'العصر :',
                salaTime: apiModel.asr,
              ),
              TimeCategory(
                salaName: 'المغرب :',
                salaTime: apiModel.maghrib,
              ),
              TimeCategory(
                salaName: 'العشاء :',
                salaTime: apiModel.isha,
              ),
            ],
          ),
        ));
  }
}
