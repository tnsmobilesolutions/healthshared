import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

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
    this.videoCallToken,
    required this.paymentInfo,
  });

  factory Appointments.fromJson(String source) =>
      Appointments.fromMap(json.decode(source));

  factory Appointments.fromMap(Map<String, dynamic> map) {
    return Appointments(
      bookedByUser: map['bookedByUser'],
      cancellationReason: map['cancellationReason'],
      cancelledBy: map['cancelledBy'],
      doctorId: map['doctorId'],
      isAvailable: map['isAvailable'],
      isBooked: map['isBooked'],
      isCancelled: map['isCancelled'],
      slotDateTime: map['slotDateTime'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['slotDateTime'])
          : null,
      slotId: map['slotId'],
      reportURL: map['reportURL'],
      problemInfo: map['problemInfo'],
      videoCallToken: map['videoCallToken'],
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
  final String? videoCallToken;
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
        other.videoCallToken == videoCallToken &&
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
        videoCallToken.hashCode ^
        paymentInfo.hashCode;
  }

  @override
  String toString() {
    return 'Appointments(bookedByUser: $bookedByUser, cancellationReason: $cancellationReason, cancelledBy: $cancelledBy, doctorId: $doctorId, isAvailable: $isAvailable, isBooked: $isBooked, isCancelled: $isCancelled, slotDateTime: $slotDateTime, slotId: $slotId, reportURL: $reportURL, problemInfo: $problemInfo, videoCallToken: $videoCallToken, paymentInfo: $paymentInfo)';
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
    String? videoCallToken,
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
      videoCallToken: videoCallToken ?? this.videoCallToken,
      paymentInfo: paymentInfo ?? this.paymentInfo,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    if (bookedByUser != null) {
      result.addAll({'bookedByUser': bookedByUser});
    }
    if (cancellationReason != null) {
      result.addAll({'cancellationReason': cancellationReason});
    }
    if (cancelledBy != null) {
      result.addAll({'cancelledBy': cancelledBy});
    }
    if (doctorId != null) {
      result.addAll({'doctorId': doctorId});
    }
    if (isAvailable != null) {
      result.addAll({'isAvailable': isAvailable});
    }
    if (isBooked != null) {
      result.addAll({'isBooked': isBooked});
    }
    if (isCancelled != null) {
      result.addAll({'isCancelled': isCancelled});
    }
    if (slotDateTime != null) {
      result.addAll({'slotDateTime': slotDateTime!.millisecondsSinceEpoch});
    }
    if (slotId != null) {
      result.addAll({'slotId': slotId});
    }
    if (reportURL != null) {
      result.addAll({'reportURL': reportURL});
    }
    if (problemInfo != null) {
      result.addAll({'problemInfo': problemInfo});
    }
    if (videoCallToken != null) {
      result.addAll({'videoCallToken': videoCallToken});
    }
    if (paymentInfo != null) {
      result.addAll({'paymentInfo': paymentInfo!.toMap()});
    }

    return result;
  }

  String toJson() => json.encode(toMap());
}
