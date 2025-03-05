import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/weather_model.dart';

part 'weather_dto.freezed.dart';
part 'weather_dto.g.dart';

@freezed
class WeatherDto with _$WeatherDto {
  const factory WeatherDto({
    @Default('') String cityName,
    @Default(0.0) @JsonKey(name: 'temp') double temperature,
    @Default('') @JsonKey(name: 'description') String condition,
    @Default(0) int humidity,
    @Default(0.0) @JsonKey(name: 'wind_speed') double windSpeed,
    @Default('°F') @JsonKey(name: 'temp_unit') String temperatureUnit,
  }) = _WeatherDto;

  factory WeatherDto.fromJson(Map<String, dynamic> json) =>
      _$WeatherDtoFromJson(json);
}

extension WeatherDtoX on WeatherDto {
  WeatherModel toDomain() => WeatherModel(
        cityName: cityName,
        temperature: temperature,
        weatherDescription: condition,
        humidity: humidity,
        windSpeed: windSpeed,
        temperatureUnit: temperatureUnit,
      );
}
