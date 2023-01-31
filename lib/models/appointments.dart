import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:healthshared/models/paymentModel.dart';

class Appointments {
  Appointments({
    this.bookedByUser,
    this.cancellationReason,
    this.cancelledBy,
    this.doctorId,
    this.isAvailable,
    this.isBooked,
    this.isCancelled,
    required this.slotDateTime,
    this.slotId,
    this.reportURL,
    this.problemInfo,
    this.meetingID,
    required this.paymentInfo,
  });

  factory Appointments.fromJson(String source) =>
      Appointments.fromMap(json.decode(source));

  factory Appointments.fromMap(Map<String, dynamic> map) {
    DateTime? slotDateTime;
    if (map['slotDateTime'] != null) {
      //List<dynamic> slotDateTimeTimeStamp = map['slotDateTime'];
      Timestamp slotDateTimeTimeStamp = map['slotDateTime'];
      slotDateTime = DateTime.fromMillisecondsSinceEpoch(
          slotDateTimeTimeStamp.seconds * 1000);
    }
    return Appointments(
      bookedByUser: map['bookedByUser'],
      cancellationReason: map['cancellationReason'],
      cancelledBy: map['cancelledBy'],
      doctorId: map['doctorId'],
      isAvailable: map['isAvailable'],
      isBooked: map['isBooked'],
      isCancelled: map['isCancelled'],
      slotDateTime: slotDateTime,
      slotId: map['slotId'],
      reportURL: map['reportURL'],
      problemInfo: map['problemInfo'],
      meetingID: map['meetingID'],
      paymentInfo: map['paymentInfo'] != null
          ? PaymentModel.fromMap(map['paymentInfo'])
          : null,
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
  final String? reportURL;
  final String? problemInfo;
  final String? meetingID;

  final PaymentModel? paymentInfo;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Appointments &&
        other.bookedByUser == bookedByUser &&
        other.cancellationReason == cancellationReason &&
        other.cancelledBy == cancelledBy &&
        other.doctorId == doctorId &&
        other.isAvailable == isAvailable &&
        other.isBooked == isBooked &&
        other.isCancelled == isCancelled &&
        other.slotDateTime == slotDateTime &&
        other.slotId == slotId &&
        other.reportURL == reportURL &&
        other.problemInfo == problemInfo &&
        other.meetingID == meetingID &&
        other.paymentInfo == paymentInfo;
  }

  @override
  int get hashCode {
    return bookedByUser.hashCode ^
        cancellationReason.hashCode ^
        cancelledBy.hashCode ^
        doctorId.hashCode ^
        isAvailable.hashCode ^
        isBooked.hashCode ^
        isCancelled.hashCode ^
        slotDateTime.hashCode ^
        slotId.hashCode ^
        reportURL.hashCode ^
        problemInfo.hashCode ^
        meetingID.hashCode ^
        paymentInfo.hashCode;
  }

  @override
  String toString() {
    return 'Appointments(bookedByUser: $bookedByUser, cancellationReason: $cancellationReason, cancelledBy: $cancelledBy, doctorId: $doctorId, isAvailable: $isAvailable, isBooked: $isBooked, isCancelled: $isCancelled, slotDateTime: $slotDateTime, slotId: $slotId, reportURL: $reportURL, problemInfo: $problemInfo, meetingID: $meetingID, paymentInfo: $paymentInfo)';
  }

  Appointments copyWith({
    String? bookedByUser,
    String? cancellationReason,
    String? cancelledBy,
    String? doctorId,
    bool? isAvailable,
    bool? isBooked,
    bool? isCancelled,
    DateTime? slotDateTime,
    String? slotId,
    String? reportURL,
    String? problemInfo,
    String? meetingID,
    PaymentModel? paymentInfo,
  }) {
    return Appointments(
      bookedByUser: bookedByUser ?? this.bookedByUser,
      cancellationReason: cancellationReason ?? this.cancellationReason,
      cancelledBy: cancelledBy ?? this.cancelledBy,
      doctorId: doctorId ?? this.doctorId,
      isAvailable: isAvailable ?? this.isAvailable,
      isBooked: isBooked ?? this.isBooked,
      isCancelled: isCancelled ?? this.isCancelled,
      slotDateTime: slotDateTime ?? this.slotDateTime,
      slotId: slotId ?? this.slotId,
      reportURL: reportURL ?? this.reportURL,
      problemInfo: problemInfo ?? this.problemInfo,
      meetingID: meetingID ?? this.meetingID,
      paymentInfo: paymentInfo ?? this.paymentInfo,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'bookedByUser': bookedByUser,
      'cancellationReason': cancellationReason,
      'cancelledBy': cancelledBy,
      'doctorId': doctorId,
      'isAvailable': isAvailable,
      'isBooked': isBooked,
      'isCancelled': isCancelled,
      'slotDateTime': slotDateTime?.millisecondsSinceEpoch,
      'slotId': slotId,
      'reportURL': reportURL,
      'problemInfo': problemInfo,
      'meetingID': meetingID,
      'paymentInfo': paymentInfo?.toMap(),
    };
  }

  String toJson() => json.encode(toMap());
}
