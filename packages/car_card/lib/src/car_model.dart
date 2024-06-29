import 'dart:convert';

import 'package:flutter/widgets.dart';

/// Represents a car model with various attributes
/// including an optional image.
@immutable
class CarModel {
  /// Creates a new instance of the [CarModel] class.
  ///
  /// All parameters except [img] are required.
  const CarModel({
    required this.model,
    required this.distance,
    required this.fuelCapacity,
    required this.pricePerHour,
    this.img,
  });

  /// Creates a new [CarModel] instance from a [Map] representation.
  ///
  /// The map must contain keys 'model', 'distance', 'fuelCapacity',
  /// and 'pricePerHour'.
  /// The 'img' key is optional.
  factory CarModel.fromMap(Map<String, dynamic> map) {
    return CarModel(
      model: map['model'] as String,
      distance: map['distance'] as double,
      fuelCapacity: map['fuelCapacity'] as double,
      pricePerHour: map['pricePerHour'] as double,
      img: map['img'] != null ? map['img'] as Image : null,
    );
  }

  /// Creates a new [CarModel] instance from a JSON string representation.
  ///
  /// The JSON string must be decoded to a map that contains keys 'model',
  /// 'distance', 'fuelCapacity', 'pricePerHour', and optionally 'img'.
  factory CarModel.fromJson(String source) =>
      CarModel.fromMap(json.decode(source) as Map<String, dynamic>);

  /// The model name of the car.
  final String model;

  /// The distance the car has traveled.
  final double distance;

  /// The fuel capacity of the car.
  final double fuelCapacity;

  /// The price per hour for renting the car.
  final double pricePerHour;

  /// An image of the car.
  final Image? img;

  /// Creates a copy of the current [CarModel] instance
  /// with optional new values.
  ///
  /// If a parameter is not provided, the current instance's value is used.
  CarModel copyWith({
    String? model,
    double? distance,
    double? fuelCapacity,
    double? pricePerHour,
    Image? img,
  }) {
    return CarModel(
      model: model ?? this.model,
      distance: distance ?? this.distance,
      fuelCapacity: fuelCapacity ?? this.fuelCapacity,
      pricePerHour: pricePerHour ?? this.pricePerHour,
      img: img ?? this.img,
    );
  }

  /// Converts the [CarModel] instance to a [Map] representation.
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'model': model,
      'distance': distance,
      'fuelCapacity': fuelCapacity,
      'pricePerHour': pricePerHour,
      'img': img,
    };
  }

  /// Converts the [CarModel] instance to a JSON string representation.
  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'CarModel(model: $model, distance: $distance, '
        'fuelCapacity: $fuelCapacity, pricePerHour: $pricePerHour, '
        'img: $img)';
  }

  @override
  bool operator ==(covariant CarModel other) {
    if (identical(this, other)) return true;

    return other.model == model &&
        other.distance == distance &&
        other.fuelCapacity == fuelCapacity &&
        other.pricePerHour == pricePerHour &&
        other.img == img;
  }

  @override
  int get hashCode {
    return model.hashCode ^
        distance.hashCode ^
        fuelCapacity.hashCode ^
        pricePerHour.hashCode ^
        (img?.hashCode ?? 0);
  }
}
