import 'package:api_example_app/SensorScreen/charts/chartComponents/TemCard.dart';
import 'package:api_example_app/SensorScreen/charts/chartComponents/TemChartRectangular.dart';
import '../../bloc.navigation_bloc/navigation_bloc.dart';
import 'package:flutter/material.dart';
import 'package:api_example_app/constants.dart';

class TemChart extends StatefulWidget with NavigationStates {
  @override
  _TemChartState createState() => _TemChartState();
}

class _TemChartState extends State<TemChart> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: kOrangeColor,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Temperature Data',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: kBgColor,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
      body: Container(
        height: double.infinity,
        child: ListView(
          children: [
            TemChartRectangular(size: size),
            TemCard(),
            SizedBox(height: size.height * 0.2),
          ],
        ),
      ),
    );
  }
}
