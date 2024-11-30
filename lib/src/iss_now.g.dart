// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'iss_now.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Iss_Position _$Iss_PositionFromJson(Map<String, dynamic> json) => Iss_Position(
      longitude: json['longitude'],
      latitude: json['latitude'],
    );

Map<String, dynamic> _$Iss_PositionToJson(Iss_Position instance) =>
    <String, dynamic>{
      'longitude': instance.longitude,
      'latitude': instance.latitude,
    };

IssNow _$IssNowFromJson(Map<String, dynamic> json) => IssNow(
      iss_position: json['iss_position'] == null
          ? null
          : Iss_Position.fromJson(json['iss_position'] as Map<String, dynamic>),
      timestamp: json['timestamp'],
      message: json['message'],
    );

Map<String, dynamic> _$IssNowToJson(IssNow instance) => <String, dynamic>{
      'iss_position': instance.iss_position,
      'timestamp': instance.timestamp,
      'message': instance.message,
    };
