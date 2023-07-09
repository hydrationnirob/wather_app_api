import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:wather_app_api/apiModel.dart';


class WatherClint{
  Future<Wather>? getCurrentWather (String? city) async{
  var url = Uri.parse("https://api.openweathermap.org/data/2.5/weather?q=Rajshahi&appid=95186147cc962987255e20ff53ebacdf&units=metric");
  var response = await http.get(url);
  var data = jsonDecode(response.body);
  print(Wather.fromJson(data).temp);
  return Wather.fromJson(data);
  }








}