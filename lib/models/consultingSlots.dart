import 'dart:convert';

class ConsultingSlots {
  final String? doctorId;
  final bool? isAvailable;
  final bool? isBooked;
  final String? slotId;
  final String? date;
  final DateTime? dateTime;
  ConsultingSlots({
    this.doctorId,
    this.isAvailable,
    this.isBooked,
    this.slotId,
    this.date,
    this.dateTime,
  });

  ConsultingSlots copyWith({
    String? doctorId,
    bool? isAvailable,
    bool? isBooked,
    String? slotId,
    String? date,
    DateTime? dateTime,
  }) {
    return ConsultingSlots(
      doctorId: doctorId ?? this.doctorId,
      isAvailable: isAvailable ?? this.isAvailable,
      isBooked: isBooked ?? this.isBooked,
      slotId: slotId ?? this.slotId,
      date: date ?? this.date,
      dateTime: dateTime ?? this.dateTime,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'doctorId': doctorId,
      'isAvailable': isAvailable,
      'isBooked': isBooked,
      'slotId': slotId,
      'date': date,
      'dateTime': dateTime?.millisecondsSinceEpoch,
    };
  }

  factory ConsultingSlots.fromMap(Map<String, dynamic> map) {
    return ConsultingSlots(
      doctorId: map['doctorId'],
      isAvailable: map['isAvailable'],
      isBooked: map['isBooked'],
      slotId: map['slotId'],
      date: map['date'],
      dateTime: map['dateTime'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['dateTime'])
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ConsultingSlots.fromJson(String source) =>
      ConsultingSlots.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ConsultingSlots(doctorId: $doctorId, isAvailable: $isAvailable, isBooked: $isBooked, slotId: $slotId, date: $date, dateTime: $dateTime)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ConsultingSlots &&
        other.doctorId == doctorId &&
        other.isAvailable == isAvailable &&
        other.isBooked == isBooked &&
        other.slotId == slotId &&
        other.date == date &&
        other.dateTime == dateTime;
  }

  @override
  int get hashCode {
    return doctorId.hashCode ^
        isAvailable.hashCode ^
        isBooked.hashCode ^
        slotId.hashCode ^
        date.hashCode ^
        dateTime.hashCode;
  }
}
