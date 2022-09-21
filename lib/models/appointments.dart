import 'dart:convert';

class Appointments {
  Appointments({
    this.doctorId,
    this.isAvailable,
    this.isBooked,
    this.slotId,
    required this.slotDateTime,
    this.isCancelled,
    this.cancellationReason,
    this.cancelledBy,
    this.bookedByUser,
  });

  factory Appointments.fromJson(String source) =>
      Appointments.fromMap(json.decode(source));

  factory Appointments.fromMap(Map<String, dynamic> map) {
    DateTime? slotDateTime;
    if (map['slotDateTime'] != null) {
      List<dynamic> slotDateTimeTimeStamp = map['slotDateTime'];
      slotDateTime = DateTime.fromMillisecondsSinceEpoch(
          slotDateTimeTimeStamp[0].seconds * 1000);
    }
    return Appointments(
      doctorId: map['doctorId'],
      isAvailable: map['isAvailable'],
      isBooked: map['isBooked'],
      slotId: map['slotId'],
      slotDateTime: slotDateTime,
      isCancelled: map['isCancelled'],
      cancellationReason: map['cancellationReason'],
      cancelledBy: map['cancelledBy'],
      bookedByUser: map['bookedByUser'],
    );
  }

  final String? bookedByUser;
  final String? cancellationReason;
  final String? cancelledBy;
  final String? doctorId;
  final bool? isAvailable;
  final bool? isBooked;
  final bool? isCancelled;
  final DateTime? slotDateTime;
  final String? slotId;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Appointments &&
        other.doctorId == doctorId &&
        other.isAvailable == isAvailable &&
        other.isBooked == isBooked &&
        other.slotId == slotId &&
        other.slotDateTime == slotDateTime &&
        other.isCancelled == isCancelled &&
        other.cancellationReason == cancellationReason &&
        other.cancelledBy == cancelledBy &&
        other.bookedByUser == bookedByUser;
  }

  @override
  int get hashCode {
    return doctorId.hashCode ^
        isAvailable.hashCode ^
        isBooked.hashCode ^
        slotId.hashCode ^
        slotDateTime.hashCode ^
        isCancelled.hashCode ^
        cancellationReason.hashCode ^
        cancelledBy.hashCode ^
        bookedByUser.hashCode;
  }

  @override
  String toString() {
    return 'Appointments(doctorId: $doctorId, isAvailable: $isAvailable, isBooked: $isBooked, slotId: $slotId, slotDateTime: $slotDateTime, isCancelled: $isCancelled, cancellationReason: $cancellationReason, cancelledBy: $cancelledBy, bookedByUser: $bookedByUser)';
  }

  Appointments copyWith({
    String? doctorId,
    bool? isAvailable,
    bool? isBooked,
    String? slotId,
    DateTime? slotDateTime,
    bool? isCancelled,
    String? cancellationReason,
    String? cancelledBy,
    String? bookedByUser,
  }) {
    return Appointments(
      doctorId: doctorId ?? this.doctorId,
      isAvailable: isAvailable ?? this.isAvailable,
      isBooked: isBooked ?? this.isBooked,
      slotId: slotId ?? this.slotId,
      slotDateTime: slotDateTime ?? this.slotDateTime,
      isCancelled: isCancelled ?? this.isCancelled,
      cancellationReason: cancellationReason ?? this.cancellationReason,
      cancelledBy: cancelledBy ?? this.cancelledBy,
      bookedByUser: bookedByUser ?? this.bookedByUser,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'doctorId': doctorId,
      'isAvailable': isAvailable,
      'isBooked': isBooked,
      'slotId': slotId,
      'slotDateTime': slotDateTime?.millisecondsSinceEpoch,
      'isCancelled': isCancelled,
      'cancellationReason': cancellationReason,
      'cancelledBy': cancelledBy,
      'bookedByUser': bookedByUser,
    };
  }

  String toJson() => json.encode(toMap());
}
