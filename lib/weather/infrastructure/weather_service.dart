import 'package:result_type/result_type.dart';
import '../domain/i_weather_service.dart';
import '../domain/weather_model.dart';

class WeatherService implements IWeatherService {
  final Map<String, WeatherModel> _mockData = {
    'Hanoi': WeatherModel(
      cityName: 'Hanoi',
      temperature: 30.5,
      weatherDescription: 'Sunny',
      humidity: 70,
      windSpeed: 3.5,
      temperatureUnit: '°C',
    ),
    'Ho Chi Minh': WeatherModel(
      cityName: 'Ho Chi Minh',
      temperature: 32.0,
      weatherDescription: 'Partly cloudy',
      humidity: 75,
      windSpeed: 4.0,
      temperatureUnit: '°C',
    ),
    'Da Nang': WeatherModel(
      cityName: 'Da Nang',
      temperature: 29.0,
      weatherDescription: 'Rainy',
      humidity: 85,
      windSpeed: 6.5,
      temperatureUnit: '°C',
    ),
  };

  @override
  Future<Result<WeatherModel, WeatherError>> getWeatherByCity(
      String cityName) async {
    // Giả lập delay network request
    await Future.delayed(const Duration(milliseconds: 500));

    final weather = _mockData[cityName];
    if (weather != null) {
      return Success(weather);
    }
    return Failure(WeatherError.cityNotFound(cityName));
  }

  @override
  Future<Result<WeatherModel, WeatherError>>
      getWeatherByCurrentLocation() async {
    // Giả lập delay và luôn trả về thời tiết Hà Nội
    await Future.delayed(const Duration(milliseconds: 800));

    return Success(_mockData['Hanoi']!);
  }
}
