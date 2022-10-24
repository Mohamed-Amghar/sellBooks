import 'dart:convert';
import 'package:app1/model/wether.dart';
import 'package:http/http.dart' show Client;

Client client = Client();

//This is the London weather API url available at this link: https://openweathermap.org/current
const _baseUrl = "http://146.190.232.192:8010/api/document";

class ApiProvider {
  fetchLondonWeather() {
    // TODO: implement fetchLondonWeather
    throw UnimplementedError();
  }
}
