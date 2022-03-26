import 'package:app/Models/WeatherModel.dart';
import 'package:app/Screens/SearchPage.dart';
import 'package:app/Screens/UpdatedHome.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Home Page'),
        actions: [IconButton(onPressed: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) => SearchPage(x: updateui,),));

        }, icon: Icon(Icons.search))],
      ),
      body: model==null?Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "No weather data avaliable",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Text(
              "Go Search",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ):UpdateHome(),
    );
  }
  void updateui(){
    setState(() {

    });
  }
}
