import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;


part 'iss_now.g.dart';

@JsonSerializable()
class Iss_Position {
    final longitude;
    final latitude;

    Iss_Position({this.longitude, this.latitude});

    factory Iss_Position.fromJson(Map<String, dynamic> json) => _$Iss_PositionFromJson(json);

    Map<String, dynamic> toJson() => _$Iss_PositionToJson(this);
}

@JsonSerializable()
class IssNow {
    final Iss_Position? iss_position;
    final timestamp;
    final message;

    IssNow({this.iss_position,this.timestamp,this.message});

    factory IssNow.fromJson(Map<String, dynamic> json) => _$IssNowFromJson(json);

    Map<String, dynamic> toJson() => _$IssNowToJson(this);
}

Future<IssNow> getIssNow() async {
  const issURL = 'http://api.open-notify.org/iss-now.json';
  final response = await http.get(Uri.parse(issURL));
  return IssNow.fromJson(json.decode(response.body));
}