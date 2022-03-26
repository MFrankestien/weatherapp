import 'dart:convert';

import 'package:app/Models/WeatherModel.dart';
import 'package:http/http.dart'as http;
class WeatherService{
 String baseurl="https://www.metaweather.com/api";
 Future<int> getCityId({required String cityName}) async {
   Uri url = Uri.parse('$baseurl/api/location/search/?query=$cityName');
   http.Response response = await http.get(url);
   print(response.body);
   List<dynamic> data = jsonDecode(response.body);

   int cityId = data[0]['woeid'];

   return cityId;
 }

 Future<WeatherModel?> getWeather({required String cityName}) async {

   WeatherModel? weatherData ;

     int id = await getCityId(cityName: cityName);

     Uri url = Uri.parse('$baseurl/api/location/$id/');
     http.Response response = await http.get(url);

     Map<String, dynamic> jsonData = jsonDecode(response.body);

     Map<String, dynamic> data = jsonData['consolidated_weather'][0];

     weatherData  = WeatherModel.fromJson(data);
   return weatherData;

   }

}