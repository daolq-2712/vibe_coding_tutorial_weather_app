import 'package:result_type/result_type.dart';
import './weather_model.dart';

/// Interface định nghĩa các phương thức để lấy dữ liệu thời tiết
abstract class IWeatherService {
  /// Lấy thông tin thời tiết dựa trên tên thành phố
  ///
  /// [cityName] là tên của thành phố cần lấy thông tin thời tiết
  ///
  /// Trả về:
  /// - [Result.success] với [WeatherModel] nếu thành công
  /// - [Result.failure] với [WeatherError] nếu:
  ///   - Không tìm thấy thành phố
  ///   - Lỗi kết nối mạng
  ///   - Lỗi server
  Future<Result<WeatherModel, WeatherError>> getWeatherByCity(String cityName);

  /// Lấy thông tin thời tiết tại vị trí hiện tại của thiết bị
  ///
  /// Trả về:
  /// - [Result.success] với [WeatherModel] nếu thành công
  /// - [Result.failure] với [WeatherError] nếu:
  ///   - Không lấy được vị trí hiện tại
  ///   - Người dùng không cấp quyền truy cập vị trí
  ///   - Lỗi kết nối mạng
  ///   - Lỗi server
  Future<Result<WeatherModel, WeatherError>> getWeatherByCurrentLocation();
}

/// Định nghĩa các loại lỗi có thể xảy ra
class WeatherError implements Exception {
  final String message;
  final String code;

  const WeatherError._({
    required this.message,
    required this.code,
  });

  /// Không tìm thấy thành phố
  static WeatherError cityNotFound(String city) => WeatherError._(
        message: 'Không tìm thấy thành phố: $city',
        code: 'CITY_NOT_FOUND',
      );

  /// Không lấy được vị trí hiện tại
  static const locationNotAvailable = WeatherError._(
    message: 'Không thể lấy vị trí hiện tại',
    code: 'LOCATION_NOT_AVAILABLE',
  );

  /// Người dùng không cấp quyền truy cập vị trí
  static const locationPermissionDenied = WeatherError._(
    message: 'Không có quyền truy cập vị trí',
    code: 'LOCATION_PERMISSION_DENIED',
  );

  /// Lỗi kết nối mạng
  static const networkError = WeatherError._(
    message: 'Lỗi kết nối mạng',
    code: 'NETWORK_ERROR',
  );

  /// Lỗi server
  static const serverError = WeatherError._(
    message: 'Lỗi server',
    code: 'SERVER_ERROR',
  );

  @override
  String toString() => 'WeatherError: $message (code: $code)';
}
