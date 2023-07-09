import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:wather_app_api/apiModel.dart';


class WeatherClient{
  Future<Weather>? getCurrentWeather (String? city) async{
   var Lcity = city;
  var url = Uri.parse("https://api.openweathermap.org/data/2.5/weather?q=$Lcity&appid=95186147cc962987255e20ff53ebacdf&units=metric");
  var response = await http.get(url);
  var data = jsonDecode(response.body);
  print(Weather.fromJson(data).temp);
  return Weather.fromJson(data);
  }








}