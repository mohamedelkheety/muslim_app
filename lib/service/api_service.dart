import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:muslim_app/Model/api_model.dart';

class ApiService {
  final Dio dio;

  ApiService(this.dio);
  Future<ApiModel> getSalaTime(
      {required String cityName, history, bool isLoading = true}) async {
    try {
      Response response = await dio.get(
          'https://api.aladhan.com/v1/timingsByCity/$history?city=$cityName&country=Egypt&method=5');

      ApiModel apiModel = ApiModel.fromJson(response.data);
      isLoading = false;
      return apiModel;
    } on DioException catch (e) {
      final String errorMassge =
          e.response?.data["data"]["data"] ?? 'Error,try later';
      log(errorMassge);
      throw Exception(errorMassge);
    } catch (e) {
      log(e.toString());
      throw Exception(e.toString());
    }
  }
}
