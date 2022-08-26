// ignore_for_file: prefer_const_constructors_in_immutables

import 'dart:convert';

import 'package:equatable/equatable.dart';

class Slot extends Equatable {
  final String? doctorId;
  final String? slotId;
  final String? doctorName;
  final String? doctorAddress;
  final String? slotdate;
  final String? slotTime;
  final int? availableSlotCount;
  final bool? isAvailable;
  final bool? isBooked;
  Slot({
    this.doctorId,
    this.slotId,
    this.doctorName,
    this.doctorAddress,
    this.slotdate,
    this.slotTime,
    this.availableSlotCount,
    this.isAvailable,
    this.isBooked,
  });

  Slot copyWith({
    String? doctorId,
    String? slotId,
    String? doctorName,
    String? doctorAddress,
    String? slotdate,
    String? slotTime,
    int? availableSlotCount,
    bool? isAvailable,
    bool? isBooked,
  }) {
    return Slot(
      doctorId: doctorId ?? this.doctorId,
      slotId: slotId ?? this.slotId,
      doctorName: doctorName ?? this.doctorName,
      doctorAddress: doctorAddress ?? this.doctorAddress,
      slotdate: slotdate ?? this.slotdate,
      slotTime: slotTime ?? this.slotTime,
      availableSlotCount: availableSlotCount ?? this.availableSlotCount,
      isAvailable: isAvailable ?? this.isAvailable,
      isBooked: isBooked ?? this.isBooked,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'doctorId': doctorId,
      'slotId': slotId,
      'doctorName': doctorName,
      'doctorAddress': doctorAddress,
      'slotdate': slotdate,
      'slotTime': slotTime,
      'availableSlotCount': availableSlotCount,
      'isAvailable': isAvailable,
      'isBooked': isBooked,
    };
  }

  factory Slot.fromMap(Map<String, dynamic> map) {
    return Slot(
      doctorId: map['doctorId'],
      slotId: map['slotId'],
      doctorName: map['doctorName'],
      doctorAddress: map['doctorAddress'],
      slotdate: map['slotdate'],
      slotTime: map['slotTime'],
      availableSlotCount: map['availableSlotCount']?.toInt(),
      isAvailable: map['isAvailable'],
      isBooked: map['isBooked'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Slot.fromJson(String source) => Slot.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Slot(doctorId: $doctorId, slotId: $slotId, doctorName: $doctorName, doctorAddress: $doctorAddress, slotdate: $slotdate, slotTime: $slotTime, availableSlotCount: $availableSlotCount, isAvailable: $isAvailable, isBooked: $isBooked)';
  }

  @override
  List<Object> get props {
    return [
      // doctorId,
      // slotId,
      // doctorName,
      // doctorAddress,
      // slotdate,
      // slotTime,
      // availableSlotCount,
      // isAvailable,
      // isBooked,
    ];
  }
}
