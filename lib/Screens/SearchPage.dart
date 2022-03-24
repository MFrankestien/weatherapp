
import 'package:flutter/material.dart';
import 'package:weatherapp/services/WeatherService.dart';
class SearchPage extends StatelessWidget {

  String? cityName;
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
            onSubmitted: (data){
              cityName=data;
              WeatherService service=WeatherService();
              service.getwoeid(CityName: cityName!);

            },
          ),
        ),
      ),
    );
  }
}
