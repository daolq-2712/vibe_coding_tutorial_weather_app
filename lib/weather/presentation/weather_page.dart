import 'package:flutter/material.dart';

class WeatherPage extends StatelessWidget {
  const WeatherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WeatherApp'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Card(
          margin: const EdgeInsets.all(16.0),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const Text(
                  'New York',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                const Icon(
                  Icons.wb_sunny,
                  color: Colors.orange,
                  size: 64,
                ),
                const SizedBox(height: 8),
                const Text(
                  '72°F',
                  style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Sunny',
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Switch to °C'),
                ),
                const SizedBox(height: 16),
                const Row(
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
