import 'dart:convert';

class Appointments {
  final String? doctorId;
  final bool? isAvailable;
  final bool? isBooked;
  final String? slotId;
  final DateTime? slotDate;
  final String? slotTime;
  final bool? isCancelled;
  final String? cancellationReason;
  final String? cancelledBy;
  final String? bookedByUser;
  Appointments({
    this.doctorId,
    this.isAvailable,
    this.isBooked,
    this.slotId,
    this.slotDate,
    this.slotTime,
    this.isCancelled,
    this.cancellationReason,
    this.cancelledBy,
    this.bookedByUser,
  });

  Appointments copyWith({
    String? doctorId,
    bool? isAvailable,
    bool? isBooked,
    String? slotId,
    DateTime? slotDate,
    String? slotTime,
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
      slotDate: slotDate ?? this.slotDate,
      slotTime: slotTime ?? this.slotTime,
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
      'slotDate': slotDate?.millisecondsSinceEpoch,
      'slotTime': slotTime,
      'isCancelled': isCancelled,
      'cancellationReason': cancellationReason,
      'cancelledBy': cancelledBy,
      'bookedByUser': bookedByUser,
    };
  }

  factory Appointments.fromMap(Map<String, dynamic> map) {
    return Appointments(
      doctorId: map['doctorId'],
      isAvailable: map['isAvailable'],
      isBooked: map['isBooked'],
      slotId: map['slotId'],
      slotDate: map['slotDate'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['slotDate'])
          : null,
      slotTime: map['slotTime'],
      isCancelled: map['isCancelled'],
      cancellationReason: map['cancellationReason'],
      cancelledBy: map['cancelledBy'],
      bookedByUser: map['bookedByUser'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Appointments.fromJson(String source) =>
      Appointments.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Appointments(doctorId: $doctorId, isAvailable: $isAvailable, isBooked: $isBooked, slotId: $slotId, slotDate: $slotDate, slotTime: $slotTime, isCancelled: $isCancelled, cancellationReason: $cancellationReason, cancelledBy: $cancelledBy, bookedByUser: $bookedByUser)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Appointments &&
        other.doctorId == doctorId &&
        other.isAvailable == isAvailable &&
        other.isBooked == isBooked &&
        other.slotId == slotId &&
        other.slotDate == slotDate &&
        other.slotTime == slotTime &&
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
        slotDate.hashCode ^
        slotTime.hashCode ^
        isCancelled.hashCode ^
        cancellationReason.hashCode ^
        cancelledBy.hashCode ^
        bookedByUser.hashCode;
  }
}