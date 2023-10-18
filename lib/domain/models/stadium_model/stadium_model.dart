

import 'package:maydon_admin_panel/domain/models/stadium_model/location_model.dart';

import 'dates_model.dart';

class StadiumModel {
  final String id;
  final String adminId;
  final LocationStadium location;
  final num priceHour;
  final String description;
  final List<String> stadiumImages;
  final List<BusyTime>? busyTimes;
  final List<String>? favoriteUser;

  StadiumModel({
    required this.priceHour,
    required this.adminId,
    required this.id,
    required this.location,
    required this.description,
    required this.stadiumImages,
    required this.busyTimes,
    required this.favoriteUser,
  });

  factory StadiumModel.fromJson(Map<String, Object?> json) {
    return StadiumModel(
      id: json["id"] as String,
      adminId: json["adminId"] as String,
      priceHour: json["priceHour"] as double,
      location: json["location"] as LocationStadium,
      description: json["description"] as String,
      stadiumImages: json["stadiumImages"] as List<String>,
      busyTimes: json.containsKey("busyTimes")
          ? (json["busyTimes"] as List)
              .map((e) => BusyTime.fromJson(e))
              .toList()
          : null,
      favoriteUser: json.containsKey("favoriteUser")
          ? json["favoriteUser"] as List<String>
          : null,
    );
  }

  Map<String, Object?> toJson() => {
        "priceHour": priceHour,
        "adminId": adminId,
        "id": id,
        "location": location,
        "description": description,
        "stadiumImages": stadiumImages,
        "busyTimes": busyTimes?.map((e) => e.toJson()).toList() ?? [],
        "favoriteUser": favoriteUser,
      };
}
