import 'dart:math';

class WeatherModel{
  String? date ;
  String? statename;
  double? minTemp;
  double? maxTemp;
  double? temp;

  WeatherModel({
      required this.date, required this.statename,
  required this.minTemp, required this.maxTemp, required this.temp});

  WeatherModel.fromJson(Map<String,dynamic> data){
    date=data['applicable_date'];
    statename=data['weather_state_name'];
    minTemp=data['min_temp'];
    maxTemp=data['max_temp'];
    temp=data['the_temp'];


  }


}



