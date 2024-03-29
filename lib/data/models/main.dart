import 'package:equatable/equatable.dart';

import '../../domain/entity/main_entity.dart';

class Main extends Equatable {
  final double? temp;
  final double? feelsLike;
  final double? tempMin;
  final double? tempMax;
  final int? pressure;
  final int? humidity;
  final int? seaLevel;
  final int? grndLevel;

  const Main({
    this.temp,
    this.feelsLike,
    this.tempMin,
    this.tempMax,
    this.pressure,
    this.humidity,
    this.seaLevel,
    this.grndLevel,
  });

  factory Main.fromJson(Map<String, dynamic> json) => Main(
        temp: (json['temp'] as num?)?.toDouble(),
        feelsLike: (json['feels_like'] as double?),
        tempMin: (json['temp_min'] as double?),
        tempMax: (json['temp_max'] as double?),
        pressure: (json['pressure'] as int?),
        humidity: json['humidity'] as int?,
        seaLevel: json['sea_level'] as int?,
        grndLevel: json['grnd_level'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'temp': temp,
        'feels_like': feelsLike,
        'temp_min': tempMin,
        'temp_max': tempMax,
        'pressure': pressure,
        'humidity': humidity,
        'sea_level': seaLevel,
        'grnd_level': grndLevel,
      };

  MainEntity toEntity() => MainEntity(
        temp: temp,
        feelsLike: feelsLike,
        tempMin: tempMin,
        tempMax: tempMax,
        pressure: pressure,
        humidity: humidity,
        seaLevel: seaLevel,
        grndLevel: grndLevel,
      );

  @override
  List<Object?> get props {
    return [
      temp,
      feelsLike,
      tempMin,
      tempMax,
      pressure,
      humidity,
      seaLevel,
      grndLevel,
    ];
  }
}
