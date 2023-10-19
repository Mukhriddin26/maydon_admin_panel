class BusyTime {
  final String id;
  final DateTime dateTime;
  final List<String> times;

  const BusyTime({
    required this.id,
    required this.dateTime,
    required this.times,
  });

  Map<String, Object?> toJson() {
    return {
      'id': id,
      'dateTime': dateTime.toIso8601String(),
      'times': times,
    };
  }

  factory BusyTime.fromJson(Map<String, Object?> json) {
    return BusyTime(
      id: json['id'] as String,
      dateTime: DateTime.tryParse(json['dateTime'] as String) ?? DateTime.now(),
      times: List.from(json['times'] as List),
    );
  }

  @override
  String toString() {
    return 'BusyTime{id: $id, dateTime: $dateTime, times: $times}';
  }
}
