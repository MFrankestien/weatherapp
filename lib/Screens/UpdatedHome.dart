import 'package:app/Screens/SearchPage.dart';
import 'package:flutter/material.dart';
class UpdateHome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    String max =model!.maxTemp!.toString();
    String min =model!.minTemp!.toString();
    String temp=model!.temp!.toString();
    return Container(

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(
            flex: 3,
          ),
          Text(cityName!,
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            model!.date!,
            style: TextStyle(
              fontSize: 22,
            ),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/images/clear.png'),
              Text(
                temp,
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Column(
                children: [
                  Text(max),
                  Text(min),
                ],
              ),
            ],
          ),
          Spacer(),
          Text(
            model!.statename!,
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(
            flex: 5,
          ),
        ],
      ),
    );
  }
}

