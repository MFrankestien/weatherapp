import 'dart:convert';

import 'package:http/http.dart'as http;
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

}
