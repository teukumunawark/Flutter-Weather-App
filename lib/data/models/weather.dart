import 'package:equatable/equatable.dart';

import '../../domain/entity/weather_entity.dart';

class Weather extends Equatable {
  final int? id;
  final String? main;
  final String? description;
  final String? icon;

  const Weather({this.id, this.main, this.description, this.icon});

  factory Weather.fromJson(Map<String, dynamic> json) => Weather(
        id: json['id'] as int?,
        main: json['main'] as String?,
        description: json['description'] as String?,
        icon: json['icon'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'main': main,
        'description': description,
        'icon': icon,
      };

  WeatherEntity toEntity() => WeatherEntity(
        id: id,
        main: main,
        description: description,
        icon: icon,
      );

  @override
  List<Object?> get props => [
        id,
        main,
        description,
        icon,
      ];
}
