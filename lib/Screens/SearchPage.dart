import 'package:app/Models/WeatherModel.dart';
import 'package:app/services/WeatherService.dart';
import 'package:flutter/material.dart';
class SearchPage extends StatelessWidget {

VoidCallback? x;

SearchPage({this.x});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search Page"),
        centerTitle: true,

      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
                hintText: "Enter city Name",
                label: Text("City"),
              suffixIcon: Icon(Icons.search),
              contentPadding: EdgeInsets.symmetric(vertical: 30,horizontal: 35)

            ),
            onSubmitted: (data)async{
              cityName=data;
              WeatherService service=WeatherService();
               model=await service.getwether(CityName: cityName!);
               x!();
               Navigator.pop(context);



            },
          ),
        ),
      ),
    );
  }
}
WeatherModel? model;
String? cityName;
