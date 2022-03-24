import 'dart:convert';

import 'package:http/http.dart'as http;
import 'package:weatherapp/Models/WeatherModel.dart';
class WeatherService{
  String baseurl="https://www.metaweather.com/api";

  Future<int> getwoeid({required String CityName}) async {
    Uri url=Uri.parse('$baseurl/location/search/?query=$CityName');
    http.Response response = await http.get(url);

    List<dynamic> josndata =await jsonDecode(response.body);

    print(josndata[0]['woeid']);
    int woeid=josndata[0]['woeid'];
    return woeid;
  }
  void getwether({required String CityName}) async{
    int cityID= await getwoeid(CityName: CityName);
    Uri url=Uri.parse('$baseurl/api/location/$cityID');
    http.Response response = await http.get(url);
    Map<String,dynamic> jsondata=await jsonDecode(response.body);
    Map<String,dynamic> finaldata=jsondata['consolidated_weather'][0];

    WeatherModel model=await WeatherModel.fromJson(finaldata);
    print(model.minTemp);

  }

}
