import 'package:flutter/material.dart';

class WeatherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WeatherApp'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Card(
          margin: EdgeInsets.all(16.0),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  'New York',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Icon(
                  Icons.wb_sunny,
                  color: Colors.orange,
                  size: 64,
                ),
                SizedBox(height: 8),
                Text(
                  '72°F',
                  style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(
                  'Sunny',
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Switch to °C'),
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Icon(Icons.water_drop, color: Colors.blue),
                        SizedBox(height: 4),
                        Text('Humidity: 65%'),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.air, color: Colors.blue),
                        SizedBox(height: 4),
                        Text('Wind: 8 mph'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
