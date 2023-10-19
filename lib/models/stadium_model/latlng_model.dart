class LatLngModel {
  double lat;
  double lng;

  LatLngModel({
    required this.lat,
    required this.lng,
  });

  factory LatLngModel.fromJson(Map<String, Object?> json) {
    return LatLngModel(
      lat: json["lat"] as double,
      lng: json["lng"] as double,
    );
  }

  @override
  String toString() {
    return 'LatLng{lat: $lat, lng: $lng}';
  }
}
