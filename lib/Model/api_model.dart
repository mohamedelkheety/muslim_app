class ApiModel {
  final String fajr;
  final String sunrise;
  final String dhuhr;
  final String asr;
  final String maghrib;
  final String isha;
  final String date;
  final String dayName;

  ApiModel(
      {required this.fajr,
      required this.dhuhr,
      required this.asr,
      required this.maghrib,
      required this.isha,
      required this.date,
      required this.dayName,
      required this.sunrise});

  factory ApiModel.fromJson(json) {
    return ApiModel(
        fajr: json["data"]["timings"]["Fajr"],
        sunrise: json["data"]["timings"]["Sunrise"],
        dhuhr: json["data"]["timings"]["Dhuhr"],
        asr: json["data"]["timings"]["Asr"],
        maghrib: json["data"]["timings"]["Maghrib"],
        isha: json["data"]["timings"]["Isha"],
        date: json["data"]["date"]["gregorian"]["date"],
        dayName: json["data"]["date"]["hijri"]["weekday"]['ar']);
  }
}
