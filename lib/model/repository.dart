import 'package:app1/model/wether.dart';

import 'api.dart';

class Repository {
  ApiProvider appApiProvider = ApiProvider();

  Future<WeatherResponse> fetchLondonWeather() =>
      appApiProvider.fetchLondonWeather();
}
