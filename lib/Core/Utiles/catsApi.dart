import 'package:dio/dio.dart';
import 'package:wietcorb_task/Features/Chart/Data/ChartModel.dart';
import 'package:wietcorb_task/Features/Images/Data/catsModel.dart';

class AppServices {
  final Dio _dio = Dio();
  final String _apiUrl = 'https://portal.wietmobile.com:8443/api/test/data';

  Future<List<CatsModel>> getCats() async {
    List<CatsModel> catsList = [];
    var response = await _dio.get(_apiUrl);
    var data = response.data;
    for (int i = 0; i < data['Result']['cats'].length; i++) {
      catsList.add(CatsModel.fromJson(data['Result']['cats'][i]));
    }
    return catsList;
  }

  Future<List<ChartModel>> getCharts() async {
    List<ChartModel> chartList = [];
    var response = await _dio.get(_apiUrl);
    var data = response.data;
    for (int i = 0; i < data['Result']['tiers'].length; i++) {
      chartList.add(ChartModel.fromJson(data['Result']['tiers'][i]));
    }
    return chartList;
  }
}
