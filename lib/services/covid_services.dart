import 'package:dio/dio.dart';
import 'package:ecms_thai/models/covid.dart';

class CovidService {
  Dio _dio = Dio();

  Future<Covid> loadCovidData() async {
    final Response response =
        await _dio.get('https://covid19.th-stat.com/api/open/today');
    if (response.statusCode == 200) {
      return Covid.fromJson(response.data);
    }
  }
}
