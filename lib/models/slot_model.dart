// ignore_for_file: prefer_const_constructors_in_immutables

import 'dart:convert';

import 'package:equatable/equatable.dart';

class Slot extends Equatable {
  final String? eventTitle;
  final String? doctorId;
  final String? slotId;
  final String? doctorName;
  final String? doctorAddress;
  final DateTime? slotDateTime;
  final int? availableSlotCount;
  final bool? isAvailable;
  final bool? isBooked;
  Slot({
    this.eventTitle,
    this.doctorId,
    this.slotId,
    this.doctorName,
    this.doctorAddress,
    this.slotDateTime,
    this.availableSlotCount,
    this.isAvailable,
    this.isBooked,
  });

  Slot copyWith({
    String? eventTitle,
    String? doctorId,
    String? slotId,
    String? doctorName,
    String? doctorAddress,
    DateTime? slotDateTime,
    int? availableSlotCount,
    bool? isAvailable,
    bool? isBooked,
  }) {
    return Slot(
      eventTitle: eventTitle ?? this.eventTitle,
      doctorId: doctorId ?? this.doctorId,
      slotId: slotId ?? this.slotId,
      doctorName: doctorName ?? this.doctorName,
      doctorAddress: doctorAddress ?? this.doctorAddress,
      slotDateTime: slotDateTime ?? this.slotDateTime,
      availableSlotCount: availableSlotCount ?? this.availableSlotCount,
      isAvailable: isAvailable ?? this.isAvailable,
      isBooked: isBooked ?? this.isBooked,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'eventTitle': eventTitle,
      'doctorId': doctorId,
      'slotId': slotId,
      'doctorName': doctorName,
      'doctorAddress': doctorAddress,
      'slotDateTime': slotDateTime?.millisecondsSinceEpoch,
      'availableSlotCount': availableSlotCount,
      'isAvailable': isAvailable,
      'isBooked': isBooked,
    };
  }

  factory Slot.fromMap(Map<String, dynamic> map) {
    return Slot(
      eventTitle: map['eventTitle'],
      doctorId: map['doctorId'],
      slotId: map['slotId'],
      doctorName: map['doctorName'],
      doctorAddress: map['doctorAddress'],
      slotDateTime: map['slotDateTime'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['slotDateTime'])
          : null,
      availableSlotCount: map['availableSlotCount']?.toInt(),
      isAvailable: map['isAvailable'],
      isBooked: map['isBooked'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Slot.fromJson(String source) => Slot.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Slot(eventTitle: $eventTitle, doctorId: $doctorId, slotId: $slotId, doctorName: $doctorName, doctorAddress: $doctorAddress, slotDateTime: $slotDateTime, availableSlotCount: $availableSlotCount, isAvailable: $isAvailable, isBooked: $isBooked)';
  }

  @override
  List<Object> get props {
    return [
      // eventTitle,
      // doctorId,
      // slotId,
      // doctorName,
      // doctorAddress,
      // slotDateTime,
      // availableSlotCount,
      // isAvailable,
      // isBooked,
    ];
  }
}
