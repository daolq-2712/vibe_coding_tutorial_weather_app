import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_model.freezed.dart';

@freezed
class WeatherModel with _$WeatherModel {
  const factory WeatherModel({
    @Default('') String cityName,
    @Default(0.0) double temperature,
    @Default('') String weatherDescription,
    @Default(0) int humidity,
    @Default(0.0) double windSpeed,
  }) = _WeatherModel;
}
